import 'employee.dart';

class Developer extends Employee{
  late String _progLang;
  Developer({required String name, required double salary, required String progLang}):
      _progLang = progLang,
      super(name: name, salary: salary);

  // using getter method
  String get progLang => _progLang;

  void showDetails(){
    print("Name: ${super.name}");
    print("Language: $_progLang");
  }

}