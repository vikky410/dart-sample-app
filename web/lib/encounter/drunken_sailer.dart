part of mud;

class DrunkenSailer extends Encounter {
  DrunkenSailer() : super._();

  get damageValue => 0;

  whenEncounter() {
    return "Hi How are you, from drunken sailer";
  }
}
