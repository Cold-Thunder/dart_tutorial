// Problem 5: Electronic Devices
// Scenario:
// Create a Device class with subclasses Laptop and Smartphone. Each subclass should have its unique behavior:
//
// Laptop should have a method code() that prints "Coding on a laptop."
// Smartphone should have a method call() that prints "Making a call."
// Problem Requirements:
//
// Write a method useDevice(Device device) that takes a Device object as input.
// Upcast instances of Laptop and Smartphone to Device and pass them to useDevice.
// Inside the method, use downcasting to call the subclass-specific methods (code or call).

import 'device.dart';
import 'laptop.dart';
import 'smartphone.dart';

void main(){
  useDevice(Laptop());
  useDevice(Smartphone());
}

void useDevice(Devices device){
  if(device is Laptop){
    Laptop laptop = device as Laptop;
    laptop.code();
  }else{
    Smartphone smartPhone = device as Smartphone;
    smartPhone.call();
  }
}