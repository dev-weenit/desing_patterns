import 'observer.dart';

abstract class Subject {
  void register(Observer o);
  void unregister(Observer o);
  void notifyObserver();
}
