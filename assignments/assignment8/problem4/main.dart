import 'developer.dart';
import 'employee.dart';
import 'manager.dart';

void main(){
  // upcasting all object to Employee
  List<Employee> employees = [Manager(name: 'H', salary: 1211313), Manager(name: 'B', salary: 1213141),
    Developer(name: 'Hemal', salary: 1212131, progLang: 'JavaScript'),
    Developer(name: 'Mohammad Hemal', salary: 1212141312, progLang: 'Dart')
  ];

  for(Employee emp in employees){
    if(emp is Manager){ //downcasting and calling method of the object
      emp.calculate();
    }else if(emp is Developer){
      emp.showDetails();
    }
  }
}