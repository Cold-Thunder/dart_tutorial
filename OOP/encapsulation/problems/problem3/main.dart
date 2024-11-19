// Problem 3: Employee Details
// Description:
// Create a class Employee with the following private properties:
//
// _name (String): Employee's name.
// _salary (double): Employee's salary.
// Add the following:
//
// A constructor to initialize _name and _salary.
// A getter for _name.
// Getters and setters for _salary, with the setter ensuring the salary is always greater than 0.
// A method giveRaise(double percentage) to increase the salary by the given percentage.

import 'employe.dart';
void main(){
  Employe employe1 = Employe(name: 'Hemal', salary: 121313);
  employe1.newSalary = 121314141;

  print(employe1.name);
  employe1.giveRaise(10);

}