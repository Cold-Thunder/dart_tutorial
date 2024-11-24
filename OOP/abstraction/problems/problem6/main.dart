// Appliance Control System
// Create an abstract class Appliance with:
//
// Abstract Methods:
// void turnOn();
// void turnOff();
// Create subclasses:
//
// Fan: Implements turnOn (e.g., print "Fan is now ON") and turnOff.
// Light: Implements turnOn (e.g., print "Light is now ON") and turnOff.
// Write a program to control these appliances dynamically.

import 'fan.dart';
import 'light.dart';

void main(){
  Fan fan1 = Fan();
  fan1.turnOn();

  Light light1 = Light();
  light1.turnOff();
}