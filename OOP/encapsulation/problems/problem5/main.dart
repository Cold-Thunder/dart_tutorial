// Bank Account System
// Scenario:
// Create a BankAccount class that has the following functionalities:
//
// A private balance field that cannot be accessed directly.
// Methods for depositing and withdrawing money. Withdrawals should be prevented if there are insufficient funds.
// A method to check the current balance, but it should not allow the balance to be changed directly from outside the class.
// Problem Requirements:
//
// Implement deposit and withdraw methods, ensuring the balance is only modified through these methods.
// Ensure that the account balance is private.
// Implement a method to retrieve the current balance, without allowing it to be modified.

import 'bankAccount.dart';
void main(){
  BankAccount bankAccount1 = BankAccount(accountNumber: '123434', balance: 5000);

  print(bankAccount1.balance);
  bankAccount1.withdrawing(5000);
  bankAccount1.deposit(1000);
  print(bankAccount1.balance);
}