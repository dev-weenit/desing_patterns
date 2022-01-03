import 'flys.dart';

class Animal {
  late Flys flyingType;

  String tryToFLy() {
    assert(flyingType != null);
    return flyingType.fly();
  }

  void setFlyingAbility(Flys instance) => flyingType = instance;
}

class Dog extends Animal {}

class Bird extends Animal {}

void main(List<String> args) {
  final dog = Animal();
  dog.setFlyingAbility(CantFly());

  final bird = Animal();
  bird.setFlyingAbility(ItFlys());

  print(dog.tryToFLy());
  print(bird.tryToFLy());
}
