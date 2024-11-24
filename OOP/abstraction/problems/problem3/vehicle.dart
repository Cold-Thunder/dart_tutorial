abstract class Vehicle{
  late String _model;
  late String _color;

  Vehicle({required String model, required String color}):
      _model = model, _color = color;

  void start();
}