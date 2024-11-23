class Employee{
  late String _name;
  late double _salary;

  Employee({required String name, required double salary}):
      _name = name, _salary = salary;

  // using getter methods
  String get name => _name;
  double get salary => _salary;

  void calculate(){
    print((_salary*10)/100);
  }
}