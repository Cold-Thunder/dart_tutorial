class Vehicle{
  late String _model;
  late int _year;

  Vehicle({required String model, required int year}):
      _model = model, _year = year;

  String get model=> _model;
}