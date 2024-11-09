import 'dart:io';

void main() {
  //taking input number as string
  print('Please input a Integer value:');
  String? number = stdin.readLineSync();

  // checking validation
  if(number == ''){
    print('Please provide a valid number!');
  }else{
    // converting string to integer
    int numInt = int.parse(number!);
    numInt is int ? print("${numInt} is Integer value"): print('${number} is not an integer value.');
  }
}
