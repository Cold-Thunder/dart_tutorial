class Job{
  late String _position;
  late double _salary;

  Job({required String position, required double salary}):
      _position = position, _salary = salary;

  // using setter for updating salary
  set newSalary(double sal){
    _salary = sal;
  }

  void showDetails(){
    print('Position: $_position');
    print('Salary: $_salary');
  }
}