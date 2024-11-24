import 'employee.dart';

class Manager extends Employee{
  late double _salary;
  Manager({required String name, required int id, required double salary}):
      _salary = salary, super(name: name, id: id);

  @override
  double calculateSalary(){
    return _salary;
  }
}