import 'person.dart';

class Patient extends Person{
  late String _disease;
  Patient({required String name, required int age, required String disease}):
      _disease = disease, super(name: name, age: age);

  void describeCondition(){
    print("Name: ${super.name}");
    print("Disease: $_disease");
  }

}