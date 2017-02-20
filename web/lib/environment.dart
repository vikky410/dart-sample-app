part of mud;

class Environment {
  String _name;

  Environment(name) {
    this.name = name;
  }

  Encounter encounter = new Encounter(6);

  String stumbleUpon() {
    this.encounter = new Encounter(6);
    var doneDamage = damage;
    var interection = "${this._name} you stumbles upon something ${this.encounter.whenEncounter()}";
    if (doneDamage > 0) {
      interection = "$interection <br /> You have ${doneDamage} damage";
    }

    return interection;
  }

  get damage => encounter.damageValue;

  set name(name) {
    this._name = "${name} - ";
  }
}
