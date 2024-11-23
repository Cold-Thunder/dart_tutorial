class Engine{
  late double _horsePower;
  late String _type;

  Engine({required double horsePower, required String type}):
      _horsePower = horsePower, _type = type;

  // using getter
  double get horsePower => _horsePower;
  String get type => _type;

  // setter
  set newHorsePower(double power){
    _horsePower = power;
  }
  set newType(String type){
    _type = type;
  }

  void engineDetails(){
    print('Horse Power: $_horsePower');
    print('Type: $_type');
  }

}