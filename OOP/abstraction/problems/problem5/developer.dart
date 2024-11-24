import 'employee.dart';

class Developer extends Employee{
  late double _hourlyRate;
  late double _workedHour;
  Developer({required String name, required int id,
    required double hourlyRate, required double workedHour}):
      _workedHour = workedHour, _hourlyRate = hourlyRate, super(name: name, id: id);

  @override
  double calculateSalary(){
      double salary = _workedHour * _hourlyRate;
      return salary;
  }
}