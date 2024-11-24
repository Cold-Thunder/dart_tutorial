import 'payment.dart';

class PaypalPayment extends Payment{
  late double _amount;
  PaypalPayment({required double amount}):
      _amount = amount;

  // using getter
  double get balance => _amount;
  @override
  void processPayment(double amount){
    print("Processing PayPal payment of \$${amount}.");
  }
}