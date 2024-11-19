// Problem 6: Person, Student, and Teacher Classes
// Description: Define a base class Person with properties:
//
// name (string): Person’s name.
// age (integer): Person’s age.
// Create two subclasses:
//
// Student, which has a property grade (string) and a method study() that prints a message indicating that the student is studying.
// Teacher, which has a property subject (string) and a method teach() that prints a message indicating that the teacher is teaching the subject.
//


void main(){
  Student student1 = Student(name: 'Hemal', age: 22, grade: 'A+');
  student1.study();

  Teacher teacher1 = Teacher(name: 'Hemal', age: 22, subject: 'Physics');
  teacher1.teach();
}

class Person{
  final String name;
  final int age;

  Person({required this.name, required this.age});

  void showDetails(){
    print('Name: $name');
    print('Age: $age');
  }
}

class Student extends Person{
  final String grade;

  Student({required String name, required int age, required this.grade}):
      super(name: name, age: age);

  @override
  void showDetails(){
    super.showDetails();
  }

  void study(){
    print('is studying');
  }
}

class Teacher extends Person{
  final String subject;
  Teacher({required String name, required int age, required this.subject}):
      super(name: name, age: age);

  @override
  void showDetails(){
    super.showDetails();
  }

  void teach(){
    print('Teaching: $subject');
  }
}