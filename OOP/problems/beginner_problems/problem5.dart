// Problem 5: Employee and Manager Hierarchy
// Description: Create a base class called Employee with properties:
//
// name (string): Employee's name.
// salary (double): Employee's salary.
// Add a method work() in Employee that prints "Employee is working".
//
// Create a subclass called Manager that inherits from Employee and has:
//
// A property department (string): Represents the department managed by the manager.
// An overridden work() method that calls the Employee's work() method, and then adds a message like "Manager is managing the department".

void main(){
  Manager manager1 = Manager(name: 'Hemal', salary: 1212121, department: 'Flutter developer');
  manager1.work();
}

class Employee{
  final String name;
  final double salary;

  Employee({required this.name, required this.salary});

  void work(){
    print('Employee is working');
    print('Name: $name');
    print('Salary: ${salary.toStringAsFixed(2)}');
  }
}

class Manager extends Employee{
  final String department;
  Manager({required String name, required double salary,required this.department}):
        super(name: name, salary: salary);

  @override
  void work(){
    super.work();
    print('Department: $department');
  }
}