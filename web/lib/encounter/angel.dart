part of mud;

class Angel extends Encounter {
  Angel() : super._();

  get damageValue => -8;

  whenEncounter() {
    return "wao, you encountered an angel";
  }
}
