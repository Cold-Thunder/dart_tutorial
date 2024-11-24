import 'appliance.dart';

class Light extends Appliance{
  @override
  void turnOff(){
    print('Light is off');
  }

  @override
  void turnOn(){
    print('Light is on');
  }
}