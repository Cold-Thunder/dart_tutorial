// Problem 8: Payment System
// Scenario:
// Create a Payment class with subclasses CreditCard and Cash. Each subclass should have its unique behavior:
//
// CreditCard should have a method processPayment() that prints "Processing credit card payment."
// Cash should have a method payCash() that prints "Paying with cash."
// Problem Requirements:
//
// Write a function makePayment(Payment payment) that accepts an upcast Payment object.
// Use downcasting to call the appropriate method (processPayment or payCash) based on the type of object.

import 'cash.dart';
import 'creditCard.dart';
import 'payment.dart';

void main(){
  makePayment(CreditCard());
  makePayment(Cash());
}

void makePayment(Payment payment){
  if(payment is CreditCard){
    CreditCard creditCard = payment as CreditCard;
    creditCard.processPayment();
  }else{
    Cash cash = payment as Cash;
    cash.payCash();
  }
}