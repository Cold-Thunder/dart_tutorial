import 'appliance.dart';

class Fan extends Appliance{
  @override
  void turnOff(){
    print('Fan is off');
  }

  @override
  void turnOn(){
    print('Fan is on');
  }
}