import 'shape.dart';

class Circle extends Shape{
  late double _radius;

  Circle({required String color, required double radius}):
      _radius = radius, super(color: color);

  void drawCircle(){
    print("Drawing a circle with radius $_radius.");
  }
}