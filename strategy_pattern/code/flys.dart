abstract class Flys {
  String fly();
}

class ItFlys implements Flys {
  @override
  String fly() {
    return 'Flying';
  }
}

class CantFly implements Flys {
  @override
  String fly() {
    return 'Cant fly';
  }
}
