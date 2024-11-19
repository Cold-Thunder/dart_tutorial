class Person{
  late String _name;
  late int _age;

  Person({required String name, required int age}):_name = name, _age = age;

  String get name => _name;
}