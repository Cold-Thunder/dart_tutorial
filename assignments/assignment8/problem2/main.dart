import 'bankAccount.dart';

void main(){
  BankAccount account1 = BankAccount(accountName: 'Md.Hemal', balance: 1000);
  account1.deposit(40000);
  account1.withDraw(20000);
}