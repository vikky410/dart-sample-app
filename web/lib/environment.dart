part of mud;

class Environment {
  String name;

  Environment(this.name);

  Encounter encounter = new Bear();

  String stumbleUpon() {
    return "${this.name} you stumbles upon something ${this.encounter.whenEncounter()}";
  }
}
