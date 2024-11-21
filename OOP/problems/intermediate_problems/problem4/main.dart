// Problem 4: Educational Institute
// Scenario:
// Create a class hierarchy for an educational institute:
//
// Create a base class Member with private fields name and id.
// Create subclasses Teacher and Student:
// Teacher should have a private field subject and a method teach() that prints the teacher’s name and subject.
// Student should have a private field grade and a method study() that prints the student’s name and grade.
// Problem Requirements:
//
// Use encapsulation to ensure fields are private, accessible only via getters and setters.
// Create a function processMember(Member member):
// Upcast instances of Teacher and Student to Member.
// Use downcasting to invoke teach for Teacher and study for Student.
// Create a list of Member objects (a mix of Teacher and Student) and process them using the processMember function.

import 'member.dart';
import 'student.dart';
import 'teacher.dart';

void main(){
  processMember(Teacher(name: 'Hemal', id: '12141313', subject: 'Physics'));
  processMember(Student(name: 'Mohammad Hemal', id: '121313', grade: 'A+'));
}

void processMember(Member member){
  if(member is Teacher){
    member.teach();
  }else if(member is Student){
    member.study();
  }else{
    print('Please provide a default member');
  }
}