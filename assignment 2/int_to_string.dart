import 'dart:io';

void main(){
  // taking an interger input from user
  print('Please enter a number:');
  int number = int.tryParse(stdin.readLineSync()!) ?? 0;

  // convertig int to String
  String numberStr = number.toString();
  print("String: ${numberStr is String}");
  
}