import 'dart:io';

class TemperaturConverter{
  late double _temp;

  TemperaturConverter({required double temp}):
      _temp = temp;

  // using getter
  double get temperatur => _temp;
  // using setter
  set newTemperatur(double value){
    _temp = value;
  }

  // c/5 = (f -32)/9
  void converter(){
    print('Please enter the mode: ');
    print('1. FtoC : Fahrenheit to celsius');
    print('2. CtoF : Celsius to Fahrenheit');
    String mode = stdin.readLineSync()!;
    if(mode != '' && (mode == '1' || mode =='2')){
      if(mode == '1'){
        _temp = (_temp*9)/5 +32;
        print('F to C: ${_temp.toStringAsFixed(2)}');
      }else{
        _temp = (_temp-32)/9 * 5;
        print('C to F: ${_temp.toStringAsFixed(2)}');
      }
    }else{
      print('Please enter a valid mode!');
    }


  }


}