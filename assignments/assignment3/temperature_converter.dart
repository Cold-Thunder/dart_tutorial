import 'dart:io';

void main(){
  print("Please select conversion type (CtoF or FtoC): ");
  print("1.CtoF (Celsius to Fahrenheit)");
  print("2.FtoC (Fahrenheit to Celsius)");

  //taking input of selection type
  String? selection = stdin.readLineSync()!;
  if(selection == "CtoF" || selection == '1'){
    print("Converting Celsius to Fahrenheit!");
    //taking input of celsius value
    print("Please enter Celsius Value:");
    double? celsius = double.tryParse(stdin.readLineSync()!);
    //converting celsius to fahrenheit
    double fahrenheit = (9*celsius!)/5 + 32;
    print("${fahrenheit.toStringAsFixed(2)}");
  }else if(selection == "FtoC" || selection == '2'){
    print("Converting Fahrenheit to Celsius!");
    //taking input of celsius value
    print("Please enter Fahrenheit Value:");
    double? fahrenheit = double.tryParse(stdin.readLineSync()!);
    //converting fahrenheit to celsius
    double celsius = (5*(fahrenheit! - 32)) / 9;
    print("${celsius.toStringAsFixed(2)}");
  }else{
    print("Select a valid mode!");
  }
}