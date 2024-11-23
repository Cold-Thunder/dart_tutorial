import 'animal.dart';

class Dog extends Animal{
  Dog({required String name, required int age}): super(name: name, age: age);
  @override
  void makeSound(){
    print('Woof');
  }
}