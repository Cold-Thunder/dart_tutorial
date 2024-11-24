// Shape Area Calculator
// Create an abstract class Shape with an abstract method double calculateArea();.
//
// Create two subclasses:
//
// Circle: Accepts radius as input and calculates the area.
// Rectangle: Accepts width and height as input and calculates the area.
// Write a program to create objects of Circle and Rectangle, calculate their areas, and print the results.

import 'circle.dart';

void main(){
  Circle circle = Circle(radius: 20);
  print("Area of circle: ${circle.calculateArea()}");
}