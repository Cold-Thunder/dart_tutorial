class Employee{
  late String _name;
  late int _id;
  late double _salary;

  Employee({required String name, required int id, required double salary}):
      _name = name, _id = id, _salary = salary;

  double get salary => _salary;
  void calculateBonus(){
    double bonus = (_salary*10) /100;
    print('Bonus: $bonus');
  }
}