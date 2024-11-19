// Problem 1: Bank Account Management
// Description:
// Create a class called BankAccount with the following private properties:
//
// _accountNumber (String): The account number.
// _balance (double): The account balance.
// Add the following:
//
// A getter for _accountNumber that allows read-only access.
// Getters and setters for _balance. Ensure the setter allows deposit amounts only (greater than 0).
// A method withdraw(double amount) that decreases the balance only if there are sufficient funds; otherwise, print an error message.
//
//
import 'bank_account.dart';

void main(){
    BankAccount account1 = BankAccount(accountName: '121233434', balance: 5000);
    print(account1.balance);
    account1.withDraw(3000);
}