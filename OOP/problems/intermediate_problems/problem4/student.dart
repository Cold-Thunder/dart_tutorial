import 'member.dart';

class Student extends Member{
  late String _grade;

  Student({required String name, required String id, required String grade}):
      _grade = grade, super(name: name, id: id);

  void study(){
    print('Name: ${super.name}');
    print('Grade: $_grade');
  }
}