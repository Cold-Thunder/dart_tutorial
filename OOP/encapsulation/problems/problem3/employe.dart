class Employe{
  late String _name;
  late double _salary;

  Employe({required String name, required double salary}): _name = name, _salary = salary;

  // using getter
  String get name => _name;
  // using setter
  set newSalary(double value){
    if(value > 0){
      _salary = value;
    }
  }
  double get salary => _salary;


  void giveRaise(double percentage){
    if(percentage > 0){
      _salary = _salary + (_salary*percentage)/100;
      print('New Salary: ${_salary.toStringAsFixed(2)}');
    }
  }
}