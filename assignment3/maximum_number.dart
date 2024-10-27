import 'dart:io';

void main(){
  // taking input 3 numbers
  print('Please enter first number: ');
  int? num1 = int.tryParse(stdin.readLineSync()!);
  print('Please enter 2nd number: ');
  int? num2 = int.tryParse(stdin.readLineSync()!);
  print('Please enter 3rd number: ');
  int? num3 = int.tryParse(stdin.readLineSync()!);

  // comparing numbers between them
  if(num1! > num2! && num1 > num3!){
    print('$num1');
  }else if(num2 > num1 && num2 > num3!){
    print('$num2');
  }else{
    print('$num3');
  }
}