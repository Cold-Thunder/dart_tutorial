// Payment System
// Create an abstract class Payment with:
//
// Abstract Method:
// void processPayment(double amount);
// Create subclasses:
//
// CreditCardPayment: Implements the processPayment method to print "Processing credit card payment of $<amount>."
// PaypalPayment: Implements the processPayment method to print "Processing PayPal payment of $<amount>."
// Write a program to accept a payment type and amount from the user, create the corresponding payment object, and call processPayment.

import 'creditCardPayment.dart';

void main(){
  CreditCardPayment credit1 = CreditCardPayment(amount: 4000);
  credit1.processPayment(credit1.balance);
}