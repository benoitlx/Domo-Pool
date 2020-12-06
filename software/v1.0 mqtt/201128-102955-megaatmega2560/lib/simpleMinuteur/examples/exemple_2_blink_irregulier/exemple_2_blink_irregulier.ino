//Exemple librairie simpleMinuteur.h
//blink irrégulier

#include "simpleMinuteur.h"

const uint8_t pinLed = 13;
bool led_allumee;

simpleMinuteur minuteur;

const uint32_t dureeEteinte = 900;
const uint32_t dureeAllumee = 100;

void setup()
{
  led_allumee = false;
  pinMode(pinLed, OUTPUT);
  digitalWrite(pinLed, LOW);
  minuteur.demarrer(dureeEteinte);
}

void loop()
{
  if (minuteur.estTermine())
  {
    led_allumee = !led_allumee;

    digitalWrite(pinLed, led_allumee ? HIGH : LOW);
    minuteur.redemarrer(led_allumee ? dureeAllumee : dureeEteinte);
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
      minuteur.demarrer(dureeAllumee);
    }
    else
    {
      digitalWrite(pinLed, LOW);
      minuteur.demarrer(dureeEteinte);
    }
  }
}
*/
