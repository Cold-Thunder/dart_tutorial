import 'vehicles.dart';

class Car extends Vehicle{
  late int _seatingCapacity;

  Car({required String model, required int year, required int seatingCapacity}):
      _seatingCapacity = seatingCapacity, super(model: model, year: year);

  void serviceCar(){
    print("Model: ${super.model}");
    print("Seating Capacity: ${_seatingCapacity}");
  }
}