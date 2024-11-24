import 'shape.dart';

class Rectangle extends Shape{
  late double _height;
  late double _width;

  Rectangle({required double height, required double width}):
      _height = height, _width = width;

  // overriding method from abstract class
  @override
  double calculateArea(){
    double area = _height*_width;
    return area;
  }
}