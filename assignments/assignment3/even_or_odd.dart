import 'dart:io';

void main(){
  // taking number input
  print("Please enter a number: ");
  int? num = int.tryParse(stdin.readLineSync()!);

  // checking odd or even
  if(num!%2==0){
    print("Even");
  }else{
    print("Odd");
  }
}