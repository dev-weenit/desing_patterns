import 'big_ufo_enemy_ship.dart';
import 'enemy_ship.dart';
import 'rocket_enemy_ship.dart';
import 'ufo_enemy_ship.dart';

class EnemyShipFactory {
  EnemyShip? makeEnemyShip(String newShipType) {
    if (newShipType == 'r') {
      return RocketEnemyShip();
    } else if (newShipType == 'u') {
      return UFOEnemyShip();
    } else if (newShipType == 'b') {
      return BigUfoEnemyShip();
    } else {
      return null;
    }
  }
}
