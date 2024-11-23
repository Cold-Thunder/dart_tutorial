import 'employee.dart';

class Manager extends Employee{
  Manager({required String name, required double salary}):
      super(name: name, salary: salary);

  @override
  void calculate(){
    print('Bonus of ${super.name}: ${(super.salary*20)/100}');
  }

}