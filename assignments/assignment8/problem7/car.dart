import 'vehicles.dart';

class Car extends Vehicles{
  Car({required String plateNumber}):super(plateName: plateNumber);

  @override
  double getParkingFee(){
    return 20;
  }

}