// Problem 3: Vehicle Service Center
// Scenario:
// Design a system for a vehicle service center:
//
// Create a base class Vehicle with private fields model and year.
// Create subclasses Car and Bike:
// Car should have a private field seatingCapacity and a method serviceCar() that prints the car model and seating capacity.
// Bike should have a private field engineCC and a method serviceBike() that prints the bike model and engine CC.
// Problem Requirements:
//
// Use encapsulation to manage access to the fields.
// Create a function serviceVehicle(Vehicle vehicle):
// Upcast instances of Car and Bike to Vehicle and pass them to this function.
// Use downcasting to call the specific serviceCar or serviceBike methods.
// Process a list of Vehicle objects, calling the appropriate service method for each.

import 'bike.dart';
import 'car.dart';
import 'vehicles.dart';

void main(){

}

void serviceVehicle(Vehicle vehicle){
  if(vehicle is Car){
    vehicle.serviceCar();
  }else if(vehicle is Bike){
    vehicle.serviceBike();
  }else{
    print('This is not a valid ');
  }
}