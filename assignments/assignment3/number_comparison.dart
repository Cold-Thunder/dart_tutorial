import 'dart:io';

void main(){
  // taking input 2 numbers
  print('Please enter first number:  ');
  int? num1 = int.tryParse(stdin.readLineSync()!);
  print("please enter 2nd number: ");
  int? num2 = int.tryParse(stdin.readLineSync()!);

  // comparing 2 numbers
  if(num1! > num2!){
    print('greater');
  }else if(num1 < num2){
    print('smaller');
  }else{
    print('equal');
  }
}