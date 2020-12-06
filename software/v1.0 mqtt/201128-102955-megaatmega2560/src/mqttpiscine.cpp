#include <SPI.h>                  // For networking
#include <Ethernet.h>             // For networking
#include <PubSubClient.h>
#include <avr/pgmspace.h> // pour stocker dans le flash
#include <EEPROM.h>
#include <OneWire.h>  //Librairie communication par bus OneWire
#include <DallasTemperature.h> //Librairie du capteur
#include <simpleMinuteur.h>


byte mac[] = { 0xDE, 0xED, 0xBA, 0xFE, 0xFE, 0xED };
//char server[] = "domass.duckdns.org";
unsigned long t = 0;

String inputString = "";


#define pwmOut 9
#define heater 22
#define light_pool 23
#define light_arround_pool 24
#define pHPump 25
#define redoxPump 26
#define vrU 27
#define vrD 28
bool vr = false;
bool h;
bool lp;
bool lap;
int filtr = 2;
float tempone;
float temptwo;
float pres;
float ph;
float red;





/*=======================Communication==========================*/

void callback(char* topic, byte* payload, unsigned int length) {
  char message[length + 1] = "";
  for (int i = 0; i < length; i++)
    message[i] = (char)payload[i];
  message[length] = '\0';
  
 
  // SUB_LED topic section
  if (strcmp(topic, "arduino") == 0)
  {
    Serial.println("topic detected");
    Serial.print("payload: ");
    Serial.println(message);
    inputString = message;
    process();
  }

}

/*======================================================*/



EthernetClient ethClient;
PubSubClient client(ethClient);

OneWire oneWire(3); //PIN digital de la sonde sur la pin 7 de l'arduino
DallasTemperature sensors(&oneWire); //Utilistion du bus Onewire pour les capteurs
DeviceAddress sensorDeviceAddress; //Vérifie la compatibilité des capteurs avec la librairie

simpleMinuteur input(2000);


void reconnect() {
  // Loop until we're reconnected
  Serial.println("Bonjour");
  while (!client.connected()) {
    Serial.print("Attempting MQTT connection...");
    // Attempt to connect
    // rename "arduinoClient" with an unique Id
    // like "arduinoClient1524ztSDeRT"
    if (client.connect("arduinoClient", "benoit", "domainedesalais")) {
      Serial.println("connected");
      // Once connected, publish an announcement...

      client.publish("arduino/test", "Arduino connected");

    } else {
      Serial.print("failed, rc=");
      Serial.print(client.state());
      Serial.println(" try again in 5 seconds");
      // Wait 5 seconds before retrying
      delay(5000);
    }
  }
  client.subscribe("arduino");
}





/*======================================================*/
/*                  --Setup--                           */
/*======================================================*/
void setup()
{
  inputString.reserve(200);
  
  pinMode(pHPump, OUTPUT);
  pinMode(redoxPump, OUTPUT);
  pinMode(heater, OUTPUT);
  pinMode(light_pool, OUTPUT);
  pinMode(light_arround_pool, OUTPUT);
  pinMode(vrU, OUTPUT);
  pinMode(vrD, OUTPUT);
  pinMode(7, INPUT_PULLUP);
  Serial.begin(9600);
  
  IPAddress broker(192, 168, 1, 44);
  
  client.setServer(broker, 1883);
  client.setCallback(callback);

  Ethernet.begin(mac); // get IP via DHCP
  // Allow the hardware to sort itself out
  delay(1500);
  Serial.println(Ethernet.localIP());

  sensors.begin(); //Sonde activée
  sensors.getAddress(sensorDeviceAddress, 0); //Adresse de la sonde à 0
  sensors.setWaitForConversion(false);
}



/*======================================================*/
/*                   --Loop--                           */
/*======================================================*/
void loop()
{ 
  if(!client.connected()){
    reconnect();
  }
  client.loop();

  if (input){
    tempone = get_temp(0);
    temptwo = get_temp(1);
    ph = pH(2.27);
    red = redox(2.27);
    pres = pressure();
    sendData();
  }
}








/*================================================*/
/*                  --Function--                  */
/*================================================*/


void heat(int state){
  digitalWrite(heater, state);
  h = state;
}

void light_piscine(int state){
  digitalWrite(light_pool, state);
  lp = state;
}

void light_arround_piscine(int state){
  digitalWrite(light_arround_pool, state);
  lap = state;
}

void setFiltr(int state){
  analogWrite(pwmOut, state); 
  filtr = state;
}

void setVr(int state){
  switch (state){
    case 3:
      digitalWrite(vrU, LOW);
      digitalWrite(vrD, LOW);
      break;
    case 1:
      digitalWrite(vrU, LOW);
      digitalWrite(vrD, HIGH);
      break;
    case 2:
      digitalWrite(vrU, HIGH);
      digitalWrite(vrD, LOW);
      break;
    default:
      client.publish("arduino/cmd", "arg is 1: bas 2: haut 3: stop");
      break;
  }
  vr = state;
}

void ipconfig(int state){
  char ipp[18];
  String(Ethernet.localIP()).toCharArray(ipp, 18);
  char macc[18];
  String((char *)mac).toCharArray(macc, 18);
  
  client.publish("arduino/cmd", ipp);
  client.publish("arduino/cmd", macc);
}

void help(int state){
  client.publish("arduino/cmd", "heat");
  client.publish("arduino/cmd", "light_piscine");
  client.publish("arduino/cmd", "light_arround_piscine");
  client.publish("arduino/cmd", "setFiltr");
  client.publish("arduino/cmd", "setVr");
  client.publish("arduino/cmd", "ipconfig");
  client.publish("arduino/cmd", "help");
}




/*==============================================================
                     --Communication--
==============================================================*/




const int number_of_fct = 8;
const char strFct[number_of_fct][30] PROGMEM = {
   "heat",
   "light_piscine",
   "light_arround_piscine",
   "setFiltr",
   "setVr",
   "ipconfig",
   "help"
};


void (*fct[number_of_fct])(int x) = {
  heat,
  light_piscine,
  light_arround_piscine,
  setFiltr,
  setVr,
  ipconfig,
  help
};


void process(){
  char msg[30];

  
  String function = inputString.substring(0, inputString.indexOf(";"));
  String arg = inputString.substring(inputString.indexOf(";")+1, inputString.length());

  function.toCharArray(msg, 30);
  if(inputString.indexOf(";") == -1){
    arg = "0";
  }
  Serial.print(F("arg: ")); Serial.println(arg); Serial.print(F("Fonction: ")); Serial.println(function); 
  for (int i=0; i<number_of_fct; i++){
    char temp = pgm_read_byte(strFct[i]);
    char str[30] = {temp};
    char j = 0;
    while (temp != '\0'){
      j++;
      temp = pgm_read_byte(strFct[i] + j);
      str[j] = temp;
    }
    if (strcmp(msg, str) == 0){
      (*fct[i])(arg.toInt());
      return;
    }
  }
}


/*==============================================================
                     --Température--
==============================================================*/

float get_temp(int numAdress){
  sensors.requestTemperatures();

  return sensors.getTempCByIndex(numAdress);
}

/*==============================================================
                     --PH--
==============================================================*/

float pH(float ph_offset){
  float ph_sensor_value = analogRead(A1) * 5000.0 / 1023.0 / 1000.0;     //convert 0.0-5v
  float ph_value_float = 0.9 * ph_value_float + 0.1 * ((0.0178 * ph_sensor_value * 200.0) - 1.889 + ph_offset);   //pour calculer le ph
  constrain(ph_value_float, 0, 14);

  return ph_value_float;
}


/*==============================================================
                     --Redox--
==============================================================*/

float redox(float redox_offset)
{
  float redox_sensor_value = analogRead(A0) * 5000.0 / 1023.0 / 1000.0;   // form 0.0 to 5.0 V
  float redox_value_float = 0.9 * redox_value_float + 0.1 * ( ((2.5 - redox_sensor_value) / 1.037) * 1000.0 + redox_offset );

  return redox_value_float;
}


/*==============================================================
                     --Pressure--
==============================================================*/

float pressure(){
  float vPressure = (analogRead(A2)*5.0) / 1024.0;

  float pressureB = (3.0*((float)vPressure-0.47))*10;
  return pressureB/10;
}

void sendData(){
  
  char pub1[18];
  char pub2[18];
  char pub3[18];
  char pub4[18];
  char pub5[18];
  String(tempone).toCharArray(pub1, 18);
  String(temptwo).toCharArray(pub2, 18);
  String(ph).toCharArray(pub3, 18);
  String(red).toCharArray(pub4, 18);
  String(pres).toCharArray(pub5, 18);
 
  if (tempone != -127){
    client.publish("arduino/temp_cpt1", pub1);
  }
  if (temptwo != -127){
    client.publish("arduino/temp_cpt2", pub2);
  }
  client.publish("arduino/ph", pub3);
  client.publish("arduino/redox", pub4);
  client.publish("arduino/pressure", pub5);
}


/*
 récap:

  commande:
    filtration
    lumières
    chauffage
    ifconfig

  envoie:
  temps
  ph
  redox
  pression



 
 */
