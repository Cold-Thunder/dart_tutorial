// Problem 1: Employee Management System
// Design a system for managing employees in a company. The system should demonstrate inheritance, encapsulation, and polymorphism by considering the following requirements:
//
// Requirements:
// Create a base class Employee with the following private fields:
//
// name (String)
// id (int)
// salary (double)
// Provide getter and setter methods for these fields to enforce encapsulation.
//
// Define a method calculateBonus() in the Employee class to calculate a bonus as a percentage of the salary (default 10%).
//
// Create the following subclasses:
//
// Manager: Inherits from Employee. Managers get an additional bonus of 20% on top of the default bonus.
// Developer: Inherits from Employee. Developers get an additional bonus of 10% if they have worked on more than 3 projects.
// Intern: Inherits from Employee. Interns do not get any bonus.
// Use method overriding in the subclasses to provide their specific implementation of calculateBonus().
//
// In the main program:
//
// Create an array or list of employees with different types (Manager, Developer, Intern).
// Use a loop to calculate and display each employee's details, including their name, ID, and total salary (salary + bonus). Use polymorphism to call the calculateBonus() method for different employee types dynamically.


import 'developer.dart';
import 'employee.dart';
import 'manager.dart';

void main(){
  checkBonus(Developer(name: 'Hemal', id: 121414, salary: 1214141, projectNumber: 4));
}

void checkBonus(Employee employee){
  if(employee is Manager){
    employee.calculateBonus();
  }else if(employee is Developer){
    employee.calculateBonus();
  }else{
    print('No bonus can be applied');
  }
}