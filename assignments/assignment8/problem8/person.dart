import 'job.dart';

class Person{
  late String _name;
  late int _age;
  late String _position;
  late double _salary;

  Person({required String name, required int age, required String position, required double salary}):
      _name = name, _age = age, _position = position, _salary = salary;
  // using getter
  String get name => _name;
  int get age => _age;
  // using setter
  set newName(String na){
    _name = na;
  }
  set newAge(int ag){
    if(ag > 0){
      _age = ag;
    }else{
      print('Please enter a valid age!');
    }
  }

  late Job job = Job(position: _position, salary: _salary);

  void personDetails(){
    print('Name: $_name');
    print('Age: $_age');
    job.showDetails();
  }

}