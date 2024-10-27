import 'dart:io';

void main(){
  print("Please enter a number:");
  int? number = int.tryParse(stdin.readLineSync()!);

  // checking the divisibility
  if(number! % 5 == 0 && number % 3 == 0){
    print("Divisible by both");
  }else if(number % 5 == 0 && number % 3 != 0){
    print("Divisible by 5 only");
  }else if(number % 5 != 0 && number % 3 == 0){
    print("Divisible by 3 only");
  }else{
    print("Not divisible by either");
  }
}