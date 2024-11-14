/// static keyword is used to declare the class variable and method
/// static variable and methods are the member of the class not of a specific instance
///
/// use:
///
/// static variable:
///          static data_type identifier = value;
/// static method:
///          static return_type identifier(){
///             //statements
///          };
///
///



void main(){
  Student student1 = Student();
  print(student1.name);
  print(Student.PI);
}

class Student{
  String name = "Hemal";
  static double PI = 3.1416;

}