class Person{
  late String _name;
  late int _age;
  Person({required String name, required int age}): _name = name, _age = age;

  // using getter

  String get name => _name;
  int get age => _age;

  // using setter
  set newName(String name){
    _name = name;
  }
  set newAge(int age){
    _age = age;
  }


  void showDetails(){
    print('Name: ${_name}');
    print('Age: $_age');

  }
}