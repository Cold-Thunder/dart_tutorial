import 'shape.dart';

class Rectangle extends Shape{
  late double _height;
  late double _width;

  Rectangle({required double height, required double width}):
      _height = height, _width = width;

  @override
  void area(){
    double ar = _width * _height;
    print("Area of rectangle: $ar");
  }
}