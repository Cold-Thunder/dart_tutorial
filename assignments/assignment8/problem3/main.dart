import 'circle.dart';
import 'rectangle.dart';
import 'shape.dart';

void main(){
  Circle circle = Circle(radius: 20);
  circle.area();

  Rectangle rectangle = Rectangle(height: 10, width: 20);
  rectangle.area();
}