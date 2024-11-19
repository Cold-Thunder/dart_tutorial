class Student{
  late String _name;
  late List<int> _grades;

  Student({required String name, required List<int> grades}): _name = name, _grades=grades;

  // using getter
  String get name => _name;
  List<int> get grades => _grades;

  void addGrade(int grade){
    if(grade >= 0 && grade <= 100){
      _grades.add(grade);
    }else{
      print(_grades);
    }
  }

  void getAverageGrade(){
    double average = _grades.reduce((a,b)=>a+b)/_grades.length;
    print('Average Grade: ${average.toStringAsFixed(2)}');
  }
}