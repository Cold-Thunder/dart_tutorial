// Temperature Converter
// Scenario:
// Design a class TemperatureConverter that handles temperature conversions between Celsius and Fahrenheit:
//
// The temperature should be stored privately.
// Implement methods to set and get the temperature, ensuring that temperatures can only be converted to the other scale.
// Provide methods to convert from Celsius to Fahrenheit and from Fahrenheit to Celsius.
// Problem Requirements:
//
// The temperature should be private and not directly accessible or modifiable.
// Provide methods to convert the temperature to the other scale while maintaining encapsulation.
import 'temperature_converter.dart';
void main(){
  TemperaturConverter tempCon = TemperaturConverter(temp: 95);

  tempCon.newTemperatur = 110;
  print(tempCon.temperatur);
  tempCon.converter();
}