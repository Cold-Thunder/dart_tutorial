///constructor is a different type of function which is created
/// with the same name of the class
/// it doesn't return any value.

///it is used to initialize an object when it is created;
///when we create an object then constructor is automatically called
///
///creating constructor:
///
/// 1. name should be same as the class
/// 2. it doesn't have explicit return type
///
/// syntax:
///
/// class ClassName{
///   ClassName();
/// }
///
///
///
/// types of constructor
///
/// 1. default constructor/ no-arg constructor:
///                        A constructor which has no parameter is called default
///                        or no-arg constructor.
///
///                        it is automatically created and ignored by compiler
///                        syntax:
///                        className(){}
///
///
/// 2. Parameter Constructor:
///                       we can pass the parameter to initialize instance variable
///                       is called parameter constructor
///
///                       syntax:
///                       className(parameters);
///
/// 3. Named Constructor:
///                       named constructors are mainly used to declare multiple
///                       constructor in a single class.
///                       syntax:
///                       className.constructorName(parameters);
///

void main(){
  var people = People();
  print(people);

  Car car = Car('Toyota', 1334455);
  print(car);

  Student stud = Student();
  print(stud);
  Student stud1 = Student.nameBranch('hemal');
  print(stud1);
}

class People{ //class
  /// default constructor.
  /// it is called when program run
  /// and ignored by compiler
  People(){
    print('people constructor is called!');
  }
}

class Car{
  final String name; //instance variable
  final int model; // instance variable

  // parameterized constructor
  Car(this.name, this.model){
    print('Name: $name and Model: $model');
  }
}


class Student{
  // late String name;

  Student(){
    print('Student class is called');
  }
  // this is named constructor
  Student.nameBranch(String name){
    print('Hello! $name');
  }

}