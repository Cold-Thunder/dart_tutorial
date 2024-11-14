// Problem 2: Shape Hierarchy
// Description: Design a class hierarchy for shapes:
//
// Create a superclass called Shape with a method area() that returns 0 by default.
// Create two subclasses, Circle and Rectangle, that inherit from Shape.
// The Circle class should have:
//
// A property radius.
// An overridden area() method that calculates and returns the area of the circle.
// The Rectangle class should have:
//
// Properties width and height.
// An overridden area() method that calculates and returns the area of the rectangle.


void main(){
  Circle circle1 = Circle(radius: 50);
  circle1.area();
  Rectangle rectangle1 = Rectangle(height: 50, width: 20);
  rectangle1.area();
}

class Shape{

  void area(){
    print('Area: ');
  }
}

class Circle extends Shape{
   final double radius;
   Circle({required this.radius});

   @override
   void area(){
     double total = 3.14 * this.radius * this.radius;
     super.area();
     print(total.toStringAsFixed(2));
   }
}

class Rectangle extends Shape{
  final double height;
  final double width;

  Rectangle({required this.height, required this.width});

  @override
  void area(){
    super.area();
    double ar = height * width;
    print(ar.toStringAsFixed(2));
  }
}