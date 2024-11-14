// Problem 3: Animal Sounds
// Description: Create a base class called Animal with a method makeSound() that prints a general message like "Animal makes a sound".
//
// Create three subclasses:
//
// Dog, which overrides makeSound() to print "Dog barks".
// Cat, which overrides makeSound() to print "Cat meows".
// Cow, which overrides makeSound() to print "Cow moos".

import 'dart:io';

void main(){
    Dog dog1 = Dog();
    dog1.makeSound();

    Cat cat1 = Cat();
    cat1.makeSound();

    Cow cow1 = Cow();
    cow1.makeSound();
}

class Animal{

  void makeSound(){
    stdout.write('Animal makes a sound: ');
  }
}

class Dog extends Animal{
  @override
  void makeSound(){
    super.makeSound();
    stdout.write('Dog barks\n');
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    super.makeSound();
    stdout.write('Cat meows\n');
  }
}

class Cow extends Animal{
  @override
  void makeSound(){
    super.makeSound();
    stdout.write('Cow moos\n');
  }
}