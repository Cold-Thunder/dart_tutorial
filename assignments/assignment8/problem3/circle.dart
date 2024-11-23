import 'shape.dart';

class Circle extends Shape{
  late double _radius;
  Circle({required double radius}): _radius =radius;

  @override
  void area(){
    double calculate = 3.1416 * _radius *_radius;
    print('Area of circle: $calculate');
  }
}