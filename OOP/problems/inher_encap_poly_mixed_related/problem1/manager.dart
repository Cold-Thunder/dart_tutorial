import 'employee.dart';

class Manager extends Employee{
  Manager({required String name, required int id, required double salary}):
      super(name: name, id: id, salary: salary);

  @override
  void calculateBonus(){
    double bonus = (super.salary*20)/100;
    print('Bonus: $bonus');
  }
}