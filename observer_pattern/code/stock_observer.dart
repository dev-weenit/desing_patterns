import 'observer.dart';

import 'subject.dart';

class StockObserver implements Observer {
  late double ibmPrice;
  late double applePrice;
  late double googlePrice;

  static int observerIDTracker = 0;

  late int observerID;

  late Subject stockGrabber;

  StockObserver(Subject stockGrabber) {
    this.stockGrabber = stockGrabber;
    this.observerID = ++observerIDTracker;
    print('New observer ${this.observerID}');

    stockGrabber.register(this);
  }

  @override
  void update(double ibmPrice, double applePrice, double googlePrice) {
    this.ibmPrice = ibmPrice;
    this.applePrice = applePrice;
    this.googlePrice = googlePrice;
    printAllPrices();
  }

  void printAllPrices() {
    print('Observer id: $observerID');
    print('ibm: $ibmPrice apple: $applePrice google: $googlePrice');
  }
}
