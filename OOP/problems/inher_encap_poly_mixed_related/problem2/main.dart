// Problem 2: Banking System
// Develop a system for a bank that includes different types of accounts, showcasing inheritance, encapsulation, and polymorphism.
//
// Requirements:
// Create a base class BankAccount with the following private fields:
//
// accountHolder (String)
// accountNumber (int)
// balance (double)
// Provide getter and setter methods for these fields, ensuring the balance cannot be set directly (use methods for depositing and withdrawing money).
//
// Define a method calculateInterest() in the BankAccount class to calculate interest (default 2% annual rate).
//
// Create subclasses:
//
// SavingsAccount: Inherits from BankAccount. This account type provides a 3% annual interest rate and a limit of 5 withdrawals per month.
// CurrentAccount: Inherits from BankAccount. No interest is provided, but there’s an overdraft limit of $5000.
// FixedDepositAccount: Inherits from BankAccount. Provides a fixed interest rate of 5% but prohibits withdrawals before maturity.
// Use method overriding to modify the calculateInterest() and withdraw() methods as necessary for the subclasses.
//
// In the main program:
//
// Create accounts of different types and store them in a list.
// Use a loop to calculate and display the interest for each account and show the balance after transactions. Use polymorphism to dynamically call the calculateInterest() method for different account types.

void main(){
  
}