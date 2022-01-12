import 'stock_grabber.dart';
import 'stock_observer.dart';

void main(List<String> args) {
  StockGrabber stockGrabber = StockGrabber();

  StockObserver observer1 = StockObserver(stockGrabber);
  stockGrabber.setIbmPrice(12);
  stockGrabber.setApplePrice(112);
  stockGrabber.setGooglePrice(132);

  StockObserver observer2 = StockObserver(stockGrabber);
  stockGrabber.setIbmPrice(2);
  stockGrabber.setApplePrice(21);
  stockGrabber.setGooglePrice(222);

  stockGrabber.unregister(observer1);

  stockGrabber.setIbmPrice(32);
  stockGrabber.setApplePrice(321);
  stockGrabber.setGooglePrice(3222);
}
