// Problem 7: Appliance and Smart Appliance
// Description: Create a superclass called Appliance with properties:
//
// brand (string): The brand of the appliance.
// power (integer): Power consumption of the appliance in watts.
// Add a method turnOn() that prints a message indicating the appliance is turned on.
//
// Create a subclass called SmartAppliance that inherits from Appliance and has:
//
// A property wifiEnabled (boolean): Indicates if the appliance is Wi-Fi enabled.
// An overridden turnOn() method that also checks if Wi-Fi is enabled and adds a message accordingly.

void main(){
  SmartApllication smApplication = SmartApllication(brand: 'IPhone', power: 55, wifiIsOn: true);
  smApplication.turnOn(smApplication.wifiIsOn);
}

class Appliance{
  final String brand;
  final int power;

  Appliance({required this.brand, required this.power});
  void turnOn(bool check){
    print('Application is on');
  }
}

class SmartApllication extends Appliance{
  late bool wifiIsOn;

  SmartApllication({required String brand, required int power,required this.wifiIsOn}):
      super(brand: brand, power: power);

  @override
  void turnOn(bool check){
    // super.turnOn(check);
    check ? print('Wifi is on'): print('Wifi is off');
  }
}