// Problem 2: Student Grades
// Description:
// Design a class called Student with the following private properties:
//
// _name (String): The name of the student.
// _grades (List<int>): A list of the student's grades.
// Add the following:
//
// A getter for _name to retrieve the student's name.
// A method addGrade(int grade) to add a grade to the list if it is between 0 and 100.
// A method getAverageGrade() to calculate and return the average grade.
// Prevent access to the _grades list directly.

import 'student.dart';

void main(){
    List<int> grades = [90, 85, 95,93, 98, 97];
    Student student1 = Student(name: 'Md.Hemal', grades: grades);

    print(student1.name);

    student1.addGrade(99);
    student1.getAverageGrade();
    print(student1.grades);
}