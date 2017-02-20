part of mud;

abstract class Encounter {
  var damageValue = 0;

  Encounter._();
  factory Encounter(int number) {
    var _rng = new Random();
    var value = _rng.nextInt(number);

    switch (value) {
      case 1:
        return new Bear();
      case 2:
        return new Ghost();
      case 3:
        return new DrunkenSailer();
      case 4:
        return new Angel();
      case 5:
        return new Goblin();
      case 6:
        return new Vampire();
      default:
        return new Nothing();
    }
  }
  whenEncounter();
}
