// class is a blueprint of an object
// a class is a user defined data type the describes
// the characteristics and behaviour of it.

// class Class_name{
//   fields
//   getter/setter
//   constructor:
//   functions
// }

// accessing the instance variable or methods of the class
// syntax:
// objectName.property_name or objectName.method_name()

void main(){
  var student = Students('Hemal', 1); // this is called object
  print(student.name); // accessing the instance variable
}

class Students{
  late String name;
  late int roll;

  // constructor
  Students(this.name, this.roll);
}