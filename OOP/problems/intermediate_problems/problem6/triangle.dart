import 'shape.dart';

class Triangle extends Shape{
  late double _base;
  late double _height;

  Triangle({required String color, required double base, required double height}):
      _base = base, _height = height, super(color: color);

  void drawTriangle(){
    print("Drawing a triangle with base $_base and height $_height.");
  }
}