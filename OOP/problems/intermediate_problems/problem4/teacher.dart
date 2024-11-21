import 'member.dart';

class Teacher extends Member{
  late String _subject;
  Teacher({required String name, required String id, required String subject}):
      _subject = subject, super(name: name, id: id);

  void teach(){
    print('Name: ${super.name}');
    print('Subject: $_subject');
  }
}