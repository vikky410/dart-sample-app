part of mud;

class Bear extends Encounter {

  var _rng = new Random();
  get damageValue => _rng.nextInt(5);
  
  whenEncounter() {
    return "You encountered a bear";
  }
}
