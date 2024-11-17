/// Encapsulation is the process of hiding data within a library.
///
/// Achieve encapsulation in dart.
/// 1. declaring private properties as private using underscore (_).
/// 2. providing public method getter and setter method to access and update the value.
///
///
/// Methods:
///   1. Getter: this method is used for accessing private value.
///   2. Setter: this method is used for updating private value.


import 'person.dart';
import 'getter.dart';
import 'setter.dart';

void main(){
    Person person1 = Person(name: 'Hemal', age: 22);
    person1.showDetails();

    print('Example of getter');
    Student student1 = Student(name: 'Mohammad', age: 22);
    student1.showInfo();
    print(student1.name);

    print('Example of setter');
    Human human1 = Human(name: 'Mohammad Hemal', age: 22);
    human1.showDetails();
    human1.newName = 'Md. Hemal';
    human1.newAge = 23;
    human1.showDetails();
}