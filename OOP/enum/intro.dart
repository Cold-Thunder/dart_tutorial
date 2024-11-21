/// An enum is a special type that represents a fixed number of constant values.
/// It is declared by using enum keyword
///
/// syntax:
///
/// enum enum_name{
///       constantName1.
///       constantName2,
///       }
///

/// Advantages Of Enum In Dart
/// => It is used to define a set of named constants.
/// => Makes your code more readable and maintainable.
/// => It makes the code more reusable and makes it easier for developers.


/// Characteristics Of Enum
/// => It must contain at least one constant value.
/// => Enums are declared outside the class.
/// => Used to store a large number of constant values.


enum days {
  Monday,
  Tuesday,
  Wednesday,
  Thursday,
  Friday,
  Saturday,
  Sunday
}

enum Gender{
  Male,
  Female,
  other
}

void main(){
  Person person = Person(name: 'Hemal', age: 22, gender: Gender.Male);
  person.showDetails();
}

class Person{
  late String name;
  late int age;
  late Gender gender;

  Person({required this.name, required this.age, required this.gender});

  void showDetails(){
    print('Name: $name');
    print('Age: $age');
    switch(gender){
      case Gender.Male: print('Gender: Male');
      break;
      case Gender.Female: print('Gender: Female');
      break;
      case Gender.other: print('Gender: Other');
      break;
      default: print('Please provide a valid gender');
    }
  }
}