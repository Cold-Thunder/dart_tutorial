import 'dart:io';

void main(){
  //taking a number input as string
  print('Please enter a double value: ');
  String? number = stdin.readLineSync();

  // checking validation
  if(number == '') {
    print('Please provide a valid double value!');
  }else{
    //converting string to double
    double numDouble = double.parse(number!);
    numDouble is double ? print("${numDouble} is double value"): print('${number} is not a double value!');
  }
}