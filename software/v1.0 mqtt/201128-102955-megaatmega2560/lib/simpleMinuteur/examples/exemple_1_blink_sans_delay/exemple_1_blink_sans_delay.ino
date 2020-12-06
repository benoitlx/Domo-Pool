//Exemple librairie simpleMinuteur.h
//blink sans delay
#include "simpleMinuteur.h"

const uint8_t pinLed = 13;
bool led_allumee;

simpleMinuteur minuteur(1000);

void setup()
{
  led_allumee = false;
  pinMode(pinLed, OUTPUT);
  digitalWrite(pinLed, LOW);
  minuteur.demarrer();
}

void loop()
{
  if (minuteur.estTermine())
  {
    led_allumee = !led_allumee;
    digitalWrite(pinLed, led_allumee ? HIGH : LOW);
    minuteur.redemarrer();
  }
}

/*Si pas à l'aise avec l'opérateur ternaire, code équivalent :
void loop()
{
  if (minuteur.estTermine())
  {
    led_allumee = !led_allumee;
    if (led_allumee)
    {
      digitalWrite(pinLed, HIGH);
    }
    else
    {
      digitalWrite(pinLed, LOW);
    }
    minuteur.redemarrer();
  }
}
*/
