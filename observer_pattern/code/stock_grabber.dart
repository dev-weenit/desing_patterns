import 'observer.dart';
import 'subject.dart';

class StockGrabber implements Subject {
  late List<Observer> observers;
  late double ibmPrice;
  late double applePrice;
  late double googlePrice;

  StockGrabber() {
    observers = [];
    ibmPrice = 0;
    applePrice = 0;
    googlePrice = 0;
  }

  @override
  void notifyObserver() {
    for (Observer o in observers) {
      o.update(ibmPrice, applePrice, googlePrice);
    }
  }

  @override
  void register(Observer o) {
    observers.add(o);
  }

  @override
  void unregister(Observer o) {
    observers.removeAt(observers.indexOf(o));
  }

  void setIbmPrice(double newIbmPrice) {
    ibmPrice = newIbmPrice;
    notifyObserver();
  }

  void setApplePrice(double newApplePrice) {
    applePrice = newApplePrice;
    notifyObserver();
  }

  void setGooglePrice(double newGooglePrice) {
    googlePrice = newGooglePrice;
    notifyObserver();
  }
}
