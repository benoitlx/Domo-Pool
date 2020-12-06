//Exemple librairie simpleMinuteur.h
//Executer plusieurs actions à un cadencement différent
#include "simpleMinuteur.h"

simpleMinuteur minuteurA(5000);
simpleMinuteur minuteurB(3000);

void setup()
{
  Serial.begin(9600);
  minuteurA.demarrer();
  minuteurB.demarrer();
}

void loop()
{
  if (minuteurA.estTermine())
  {
    actionA();
    minuteurA.redemarrer();
  }

  if (minuteurB.estTermine())
  {
    actionB();
    minuteurB.redemarrer();
  }
}

void actionA()
{
  static uint32_t nb_appels = 0; //"static" conserve la variable entre deux appels
  nb_appels++;
  afficher('A', nb_appels);
}

void actionB()
{
  static uint32_t nb_appels = 0;
  nb_appels++;
  afficher('B', nb_appels);
}

void afficher(char c, uint32_t nb)
{
  Serial.print("millis()=");
  Serial.print(millis());
  Serial.print(", action ");
  Serial.print(c);
  Serial.println(nb);
}
