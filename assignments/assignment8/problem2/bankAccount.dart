class BankAccount{
  late String _accountName;
  late double _balance;

  BankAccount({required String accountName, required double balance}):
        _accountName = accountName, _balance = balance;

  double get balance => balance;

  void deposit(double amount){
    _balance += amount;
    print('Deposit amount: $amount');
    print('New Balance: $_balance');
  }

  void withDraw(double amount){
    if(amount < _balance){
       _balance -= _balance - amount;
       print('Withdrawal Successful');
       print('New Balance: $_balance');
    }else{
      print('insufficient balance');
    }
  }
}