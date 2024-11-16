// multilevel inheritance is that kind of heritence there a class inherit properties of
// other class and that class is also inheriting from another class

void main(){
  Student student1 =Student(name: 'Hemal', age: 22, reg: 'adad', roll: 14);
  student1.showDetails();
}

class Person{
  final String name;
  final int age;

  Person({required this.name, required this.age});
  void showDetails(){
    print('Hi! $name. Age: $age');
  }
}

class Employe extends Person{
  final String reg;

  Employe({required String name, required int age, required this.reg}):
      super(name: name, age: age);

  @override
  void showDetails(){
    super.showDetails();
    print('Reg: $reg');
  }
}

class Student extends Employe{
  final int roll;
  Student({required String name, required int age, required String reg, required this.roll}):
      super(name: name, age: age, reg: reg);


  @override
  void showDetails(){
    super.showDetails();
    print('Roll: $roll');
  }
}