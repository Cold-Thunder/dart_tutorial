// Problem 6: Educational Institution
// Scenario:
// Create a base class Person with subclasses Teacher and Student. Each subclass should have its unique behavior:
//
// Teacher should have a method teach() that prints "Teacher is teaching."
// Student should have a method study() that prints "Student is studying."
// Problem Requirements:
//
// Create a function performAction(Person person) that accepts an upcast Person object.
// Inside the function, use type-checking and downcasting to call either teach or study based on the type of the object passed.

import 'person.dart';
import 'student.dart';
import 'teacher.dart';

void main(){
  performAction(Teacher());
  performAction(Student());
}

void performAction(Person person){
  if(person is Teacher){
    Teacher teacher = person as Teacher;
    teacher.teach();
  }else{
    Student student = person as Student;
    student.study();
  }
}