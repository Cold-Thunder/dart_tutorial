import 'vehicles.dart';

class Bike extends Vehicle{
  late int _engineCC;

  Bike({required String model, required int year, required int engineCC}):
    _engineCC = engineCC, super(model: model, year: year);

  void serviceBike(){
    print('Model: ${super.model}');
    print('Engin: $_engineCC');
  }
}