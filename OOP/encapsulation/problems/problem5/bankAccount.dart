class BankAccount{
  late String accountNumber;
  late double _balance;

  BankAccount({required this.accountNumber, required double balance}): _balance=balance;

  double get balance => _balance;

  void deposit(double value){
    print('You account deposited!');
    _balance = _balance + value;
    print('New Balance: $_balance');

  }

  void withdrawing(double value){
    if(_balance > value){
      _balance = _balance - value;
      print('Withdraw successful!');
      print('New balance: $_balance');
    }else{
      print('Insufficient balance!');
    }
  }
}