import 'payment.dart';

class CreditCardPayment extends Payment{
    late double _amount;

    CreditCardPayment({required double amount}):
        _amount = amount;

    // using getter
    double get balance => _amount;
    @override
    void processPayment(double amount){
      print("Processing credit card payment of \$${amount}.");
    }
}