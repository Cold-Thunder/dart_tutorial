import 'vehicles.dart';

class Motorcycle extends Vehicles{
  Motorcycle({required String plateName}): super(plateName: plateName);

  @override
  double getParkingFee(){
    return 5;
  }
}