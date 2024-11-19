// Problem 3: Employee Role System
// Scenario:
// Create a class Employee with subclasses Manager and Engineer. Each subclass should have its own method:
//
// Manager should have a method scheduleMeeting() that prints "Meeting is scheduled."
// Engineer should have a method writeCode() that prints "Engineer is writing code."
// Problem Requirements:
//
// Write a function performTask(Employee employee) that takes an Employee object as input.
// Use upcasting to pass objects of type Manager and Engineer to the function.
// Inside the function, use downcasting and the is keyword to call subclass-specific methods.

import 'employee.dart';
import 'engineer.dart';
import 'manager.dart';

void main(){
  checkingEmployee(Manager());
  checkingEmployee(Engineer());
}

void checkingEmployee(Employee employee){
  if(employee is Manager){
    Manager manager = Manager();
    manager.scheduleMeeting();
  }else if(employee is Engineer){
    Engineer engineer = Engineer();
    engineer.writeCode();
  }
}