// Hierarchical Inheritance is that inheritance where different
// kind of classes are created from one class

void main(){
  Student student1 = Student(name: 'Hemal', age: 22, roll: 14);
  student1.showDetails();

  Employe employe1 = Employe(name: 'hemal', age: 22, salary: 123445566);
  employe1.showDetails();
}

class Person{
  final String name;
  final int age;

  Person({required this.name , required this.age});

  void showDetails(){
    print('Name: ${this.name}');
    print('Age: $age');
  }
}

class Employe extends Person{
  final double salary;

  Employe({required String name, required int age, required this.salary}):
      super(name: name, age: age);

  @override
  void showDetails(){
    super.showDetails();
    print('Salary: $salary');
  }
}


class Student extends Person{
  final int roll;
  Student({required String name, required int age, required this.roll}):
      super(name: name, age: age);

  @override
  void showDetails(){
    super.showDetails();
    print('Roll: $roll');
  }
}