import 'dart:io';

void main(){
  // taking input a year
  print("Please enter a year:");
  int? year = int.tryParse(stdin.readLineSync()!);

  //checking leap year or not
  if(year! % 4 == 0){
      if(year % 100 == 0){
        if(year % 400 == 0){
          print("Leap year");
        }else{
          print("Not leap year");
        }
      }else{
        print('Leap Year');
      }
  }else{
    print("Not Leap Year");
  }
}