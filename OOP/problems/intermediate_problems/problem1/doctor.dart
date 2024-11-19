import 'person.dart';

class Doctor extends Person{
  late String _specialization;
  Doctor({required String name, required int age, required String specialization}):
        _specialization = specialization, super(name: name, age: age);

  void performCheckup(){
    print('Name: ${super.name}');
    print('Specialist: $_specialization');
  }
}