///getter:
///   special method that is used for accessing private properties.
///
/// syntax:
///  return_type get property_name(){
///       //getter body
/// }
///
///

class Student{
  late String _name;
  late int _age;

  Student({required String name, required int age}): _name = name, _age = age;

  // using getter
  String get name => _name;
  int get age => _age;

  void showInfo(){
    print('Name: $_name. Age: $_age');
  }
}