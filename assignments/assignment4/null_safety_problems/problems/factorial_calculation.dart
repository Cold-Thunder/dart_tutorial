import 'dart:io';

void main(){
  // taking input from user
  print('Please enter a number for factorial: ');
  String inputNumber = stdin.readLineSync()!;

  if(inputNumber != ''){
    int? number = int.tryParse(inputNumber);
    // checking number is null or not
    if(number != null){
      // calling function
      print(factorial(number));
    }else{
      print('Please enter a valid number!');
    }
  }else{
    print('Please enter a valid number!');
  }
}

// factorial function
int factorial(int n){
  int fact = 1;
  if(n < 0){
    fact = -1;
  }else{
    int i = 1;
    while(i <= n){
      fact *= i;
      i++;
    }
  }
  return fact;
}
