// Vehicle Class Hierarchy
// Create an abstract class Vehicle with:
//
// Properties:
// String model
// String color
// Abstract Method:
// void start()
// Create subclasses:
//
// Car: Implements the start method to print "Car is starting."
// Bike: Implements the start method to print "Bike is starting."
// Write a program to demonstrate polymorphism by creating a list of Vehicle objects (both Car and Bike) and calling their start methods in a loop.
import 'car.dart';

void main(){
  Car car1 = Car(model: 'adadad', color: 'red');
  car1.start();
}