import 'subject.dart';

class GetTheStock {
  final int startTime;
  final String stock;
  final double price;

  final Subject stockGabber;

  GetTheStock(
      {required this.startTime,
      required this.stock,
      required this.price,
      required this.stockGabber});
}
