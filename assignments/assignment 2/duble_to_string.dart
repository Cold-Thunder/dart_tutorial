import 'dart:io';

void main(){
  //taking input of a floating point value.
  print("Please enter a floating point value:");
  double? num = double.tryParse(stdin.readLineSync()!);

  // converting to string
  String? numStr = num.toString();
  print("String: ${numStr is String}");
}