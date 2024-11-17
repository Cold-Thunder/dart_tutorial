/// setter:
///    It is the special method that is used for setting data in private property.
///
/// syntax:
///   set property_name(value){
///      //setter body;
///      }
///

class Human{
  late String _name;
  late int _age;

  Human({required String name, required int age}): _name = name, _age = age;

  // using setter
  set newName(String name){
    _name = name;
  }

  set newAge(int age){
    _age = age;
  }

  void showDetails(){
    print('Name: $_name, Age: $_age');
  }
}