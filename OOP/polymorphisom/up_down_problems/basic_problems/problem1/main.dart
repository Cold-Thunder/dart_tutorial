// Problem 1: Animal Hierarchy
// Scenario:
// Create an Animal class with subclasses Dog and Cat. Each subclass should have its own method:
//
// Dog should have a method bark() that prints "Dog is barking."
// Cat should have a method meow() that prints "Cat is meowing."
// Problem Requirements:
//
// Create a list of Animal objects and upcast instances of Dog and Cat to Animal.
// Iterate through the list and use downcasting to call the specific methods (bark or meow) of each subclass.
// Use type-checking (is operator) to determine the correct subclass during iteration.

import 'animal.dart';
import 'cat.dart';
import 'dog.dart';

void main(){
  List<Animal> animals = [Dog(), Cat()]; //upcasting here

  for(Animal animal in animals){
    if(animal is Dog){
      Dog dog = Dog();
      dog.bark();
    }else if(animal is Cat){
      Cat cat = Cat();
      cat.meow();
    }
  }
}