// Problem 6: Shape Drawing Application
// Scenario:
// Create a class hierarchy for drawing shapes:
//
// Create a base class Shape with private fields color.
// Create subclasses Circle, Rectangle, and Triangle:
// Circle should have a private field radius and a method drawCircle() that prints "Drawing a circle with radius X."
// Rectangle should have private fields length and breadth and a method drawRectangle() that prints "Drawing a rectangle of size XxY."
// Triangle should have private fields base and height and a method drawTriangle() that prints "Drawing a triangle with base X and height Y."
// Problem Requirements:
//
// Use encapsulation for all fields.
// Create a function renderShape(Shape shape):
// Upcast instances of Circle, Rectangle, and Triangle to Shape.
// Use downcasting to call the appropriate drawing method (drawCircle, drawRectangle, or drawTriangle).
// Create a collection of Shape objects and call the appropriate method for each using the function.


import 'circle.dart';
import 'rectangle.dart';
import 'shape.dart';
import 'triangle.dart';

void main(){
  renderShape(Circle(color: 'Blue', radius: 40));
  renderShape(Rectangle(color: 'Red', length: 50, breath: 25));
  renderShape(Triangle(color: 'Green', base: 30, height: 20));
}

void renderShape(Shape shape){
  if(shape is Circle){
    shape.drawCircle();
  }else if(shape is Rectangle){
    shape.drawRectangle();
  }else if(shape is Triangle){
    shape.drawTriangle();
  }else{
    print('Please enter a valid shape');
  }
}