import 'dart:io';

import 'enemy_ship.dart';
import 'enemy_ship_factory.dart';
import 'rocket_enemy_ship.dart';
import 'ufo_enemy_ship.dart';

main() {
  // EnemyShip enemyShip;

  print("Enter your choice: u / r / d");
  String? choice = stdin.readLineSync();
  choice ??= '';

  // if (choice.isNotEmpty) {
  //   if (choice.toLowerCase() == 'u') {
  //     enemyShip = UFOEnemyShip();
  //   } else {
  //     //  else if (choice.toLowerCase() == 'r') {
  //     enemyShip = RocketEnemyShip();
  //   }
  //   doStuffEnemy(enemyShip);
  // }

  EnemyShipFactory shipFactory = EnemyShipFactory();
  EnemyShip? ship = shipFactory.makeEnemyShip(choice);

  if (ship != null) {
    doStuffEnemy(ship);
  } else {
    print('Ship not found');
  }
}

void doStuffEnemy(EnemyShip anEnemyShip) {
  anEnemyShip.displayEnemyShip();
  anEnemyShip.followHeroShip();
  anEnemyShip.enemyShipShoots();
}
