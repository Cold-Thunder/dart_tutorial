import 'dart:io';

void main(){
  // taking input a makers
  print('Please enter your mark: ');
  double? num = double.tryParse(stdin.readLineSync()!);

  // checking makers
  if(num! > 90 && num <100){
    print("A");
  }else if(num >= 80 && num < 90){
    print('B');
  }else if(num >= 70 && num < 80){
    print("C");
  }else if(num >= 60 && num < 70){
    print("D");
  }else if(num < 60){
    print("F");
  }else{
    print('Please enter a valid number!');
  }
}