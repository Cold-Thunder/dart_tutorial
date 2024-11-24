import 'vehicle.dart';

class Bike extends Vehicle{
  Bike({required String model, required String color}):
      super(model: model, color: color);

  @override
  void start(){
    print('Bike is starting');
  }
}