import 'vehicle.dart';

class Car extends Vehicle{
  Car({required String model, required String color}):
      super(model: model, color: color);

  @override
  void start(){
    print('Car is starting');
  }
}