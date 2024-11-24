// Employee Management System
// Create an abstract class Employee with:
//
// Properties:
// String name
// int id
// Abstract Method:
// double calculateSalary();
// Create subclasses:
//
// Manager: Accepts a fixed salary and returns it as the salary.
// Developer: Accepts an hourly rate and number of hours worked and calculates the salary as hourlyRate * hoursWorked.
// Write a program to calculate and display the salaries of multiple employees.

import 'developer.dart';
import 'manager.dart';

void main(){
  Manager manager1 = Manager(name: 'Hemal', id: 121212, salary: 12131313);
  print('Manager Salary: ${manager1.calculateSalary()}');

  Developer developer1 = Developer(name: 'Mohammad Hemal', id: 121212, hourlyRate: 30, workedHour: 40);
  print('Developer Salary: \$${developer1.calculateSalary()}');
}