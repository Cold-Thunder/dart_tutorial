// Problem 4: Shape Drawing
// Scenario:
// Create a Shape class with subclasses Circle and Rectangle. Each subclass should have its own method:
//
// Circle should have a method drawCircle() that prints "Drawing a circle."
// Rectangle should have a method drawRectangle() that prints "Drawing a rectangle."
// Problem Requirements:
//
// Create a list of Shape objects containing instances of Circle and Rectangle (upcast them to Shape).
// Write a function renderShapes(List<Shape> shapes) that iterates through the list and uses downcasting to call the appropriate drawing method for each shape.

import 'circle.dart';
import 'rectangle.dart';
import 'shape.dart';

void main(){
  List<Shape> shapes = [Circle(), Rectangle()];
  renderShapes(shapes);

}

void renderShapes(List<Shape> shapes){
  for(Shape shape in shapes){
    if(shape is Circle){
      Circle circle = Circle();
      circle.drawCircle();
    }else if(shape is Rectangle){
      Rectangle rectangle = Rectangle();
      rectangle.drawRectangle();
    }
  }
}