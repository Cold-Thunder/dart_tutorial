import 'animal.dart';

class Cat extends Animal{
  Cat({required String name, required int age}):super(name: name, age: age);

  @override
  void makeSound(){
    print('Meow');
  }
}