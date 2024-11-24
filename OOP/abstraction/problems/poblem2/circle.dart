import 'shape.dart';

class Circle extends Shape{
  late double _radius;
  Circle({required double radius}): _radius = radius;

  @override
  double calculateArea(){
    double area = 3.1416*_radius*_radius;
    return area;
  }
}