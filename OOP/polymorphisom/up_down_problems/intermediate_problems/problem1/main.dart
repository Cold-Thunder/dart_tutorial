// Problem 1: Transport Fleet Management
// Scenario:
// Create a base class Transport with subclasses Bus and Truck. Each subclass should have its unique behavior:
//
// Bus should have a method startJourney() that prints "Bus journey started."
// Truck should have a method loadCargo() that prints "Truck is loading cargo."
// Problem Requirements:
//
// Create a function manageTransport(Transport transport) that takes a Transport object as input.
// Use upcasting to store instances of Bus and Truck in a list of type Transport.
// Inside the function, use downcasting to call the appropriate methods (startJourney or loadCargo) based on the type of Transport.

import 'bus.dart';
import 'transport.dart';
import 'truck.dart';

void main(){
  manageTransport(Bus());
  manageTransport(Truck());
}

void manageTransport(Transport transport){
  if(transport is Bus){
    Bus bus = transport as Bus;
    bus.startJourney();
  }else{
    Truck truck = transport as Truck;
    truck.loadCargo();
  }
}