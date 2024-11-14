// Problem 1: Vehicle and Car Classes
// Description: Create a base class called Vehicle that has the following properties:
//
// * speed (integer): The current speed of the vehicle.
// * color (string): The color of the vehicle.
// * Add a method move() that prints a message indicating that the vehicle is moving.
//
// * Next, create a subclass called Car that inherits from Vehicle. The Car class should have:
//
// * A new property numDoors (integer): Represents the number of doors in the car.
// * An overridden move() method that includes additional information specific to a car.

void main() {
  Car car1 = Car(speed: 50, color: 'black', numDoors: 2);
  car1.move();
}

class Vehicle {
  final int speed;
  final String color;

  Vehicle({required this.speed, required this.color});
  void move() {
    print('Moving..! Speed: $speed, Color: $color');
  }
}

class Car extends Vehicle {
  final int numDoors;
  Car({required int speed, required String color, required this.numDoors})
      : super(speed: speed, color: color);

  @override
  void move() {
    super.move();
    print('NumDoors: $numDoors');
  }
}
