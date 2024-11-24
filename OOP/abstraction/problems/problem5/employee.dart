abstract class Employee{
  late String _name;
  late int _id;

  Employee({required String name, required int id}):
      _name = name, _id = id;

  double calculateSalary();
}