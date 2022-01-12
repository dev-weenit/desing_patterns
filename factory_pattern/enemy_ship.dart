abstract class EnemyShip {
  late String _name;
  late double _amtDamage;

  String get name => _name;
  void set name(name) => _name = name;

  double get amtDamage => _amtDamage;
  void set amtDamage(amtDamage) => this._amtDamage = amtDamage;

  void followHeroShip() {
    print(name + 'is following the hero');
  }

  void displayEnemyShip() {
    print(name + 'is on the screen');
  }

  void enemyShipShoots() {
    print(name + 'attacks and does ' + amtDamage.toString());
  }
}
