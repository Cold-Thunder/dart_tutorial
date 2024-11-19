class BankAccount {
  final String _accountNumber;
  late double _balance;

  BankAccount({required String accountName, required double balance})
      : _accountNumber = accountName,
        _balance = balance;

  // using getter
  String get accountNumber => _accountNumber;
  double get balance => _balance;

  // using setter
  set newBalance(double deposit) {
    if (deposit > 0) {
      _balance = _balance - deposit;
    }
  }

  void withDraw(double amount){
    if(_balance > amount){
      _balance = _balance - amount;
      print("withdraw successful");
      print('New balance: $_balance');

    }else{
      print('No sufficient balance');
    }
  }
}
