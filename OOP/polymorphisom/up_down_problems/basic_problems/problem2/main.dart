// Problem 2: Vehicle System
// Scenario:
// Create a Vehicle class with subclasses Car and Bike. Each subclass should have unique behaviors:
//
// Car should have a method startAC() that prints "Car AC is starting."
// Bike should have a method kickStart() that prints "Bike is being kickstarted."
// Problem Requirements:
//
// Create a function operateVehicle(Vehicle vehicle) that takes a Vehicle object as input.
// Use upcasting to pass objects of type Car and Bike to the function.
// Inside the function, use downcasting to call the specific methods (startAC or kickStart) if the object belongs to a particular subclass.


import 'bike.dart';
import 'car.dart';
import 'vehicle.dart';

void main(){
  operateVehicle(Bike());
  operateVehicle(Car());
}
void operateVehicle(Vehicle vehicle){
  if(vehicle is Car){
    Car car = Car();
    car.startAC();
  }else if(vehicle is Bike){
    Bike bike = Bike();
    bike.kickStart();
  }
}