abstract class Animal{
  late String _name;
  late int _age;
  Animal({required String name, required int age}):
      _name = name, _age = age;

  void makeSound();
  void eat();
}