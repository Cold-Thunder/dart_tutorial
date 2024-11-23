import 'car.dart';
import 'motorcycle.dart';
import 'vehicles.dart';

void main(){
  List<Vehicles> vehicles = [Car(plateNumber: 'adad'), Car(plateNumber: 'adadad'),
    Motorcycle(plateName: 'adadad'), Motorcycle(plateName: '12313123'), Motorcycle(plateName: '1212323')
  ];
  double totalfee = 0;
  for(Vehicles vehicle in vehicles){
    totalfee += vehicle.getParkingFee();
  }

  print('Total Parking fee: \$$totalfee');
}