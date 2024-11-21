import 'shape.dart';

class Rectangle extends Shape{
  late double _length;
  late double _breath;

  Rectangle({required String color, required double length, required double breath}):
      _length = length, _breath = breath, super(color:  color);

  void drawRectangle(){
    print("Drawing a rectangle of size $_length x $_breath.");
  }
}