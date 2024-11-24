// 1. Abstract Class for Animals
// Create an abstract class called Animal with the following properties and methods:
//
// Properties:
// String name
// int age
// Abstract Methods:
// void makeSound()
// void eat()
// Then create two subclasses:
//
// Dog: Implements makeSound (e.g., print "Bark!") and eat (e.g., print "Dog is eating dog food").
// Cat: Implements makeSound (e.g., print "Meow!") and eat (e.g., print "Cat is eating cat food").
// Finally, create instances of Dog and Cat and call their methods.

import 'cat.dart';
import 'dog.dart';
void main(){
  Dog dog1 = Dog(name: 'adadad', age: 2);
  dog1.makeSound();

  Cat cat1 =Cat(name: 'doly', age: 2);
  cat1.makeSound();
}