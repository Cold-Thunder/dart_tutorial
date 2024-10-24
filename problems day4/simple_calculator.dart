import 'dart:io';

void main(){
  //taking numbers
  print("Please enter number-1:");
  double num1 = double.tryParse(stdin.readLineSync()!) ?? 0;
  print("Please enter number-2:");
  double num2 = double.tryParse(stdin.readLineSync()!) ?? 0;

  // taking operator
  print("Please enter a Operator (+ - * /):");
  String operator = stdin.readLineSync()!;

  //checking valid operator
  if(operator == '+' || operator == '-' || operator == '*' || operator == '/'){
    //doing operation
    switch(operator){
      case '+': print("Result: ${num1 + num2}");
      break;
      case '-': print("Result: ${num1 - num2}");
      break;
      case '*': print("Result: ${num1*num2}");
      break;
      case '/': print("Result: ${num1 /num2}");
      break;
    }
  }else{
    print('Please input a valid Operator (+ - / *)');
  }
}