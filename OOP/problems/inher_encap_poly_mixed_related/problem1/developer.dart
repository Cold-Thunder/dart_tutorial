import 'employee.dart';

class Developer extends Employee{
  late int _countProject;
  Developer({required int projectNumber, required String name, required int id, required double salary}):
      _countProject = projectNumber, super(name: name, id: id, salary: salary);

  @override
  void calculateBonus(){
    if(_countProject > 3){
      super.calculateBonus();
    }
  }
}