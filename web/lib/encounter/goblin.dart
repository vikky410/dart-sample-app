part of mud;

class Goblin extends Encounter {

  int damageValue = 0;
  Goblin() : super._();

  whenEncounter() {
    return "encountered a goblin";
  }
}
