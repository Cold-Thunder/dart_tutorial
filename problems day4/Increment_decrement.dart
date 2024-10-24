import 'dart:io';

void main() {
  print('Please enter a number: ');
  int num = int.tryParse(stdin.readLineSync()!) ?? 0;

  // using pre increment
  print(++num); //it will increase first than print/use the value

  //using post increment
  print(num++); //it will print/use the number first than will increase

  //using pre decrement
  print(--num); //it will decrease fist than print/use the value

  //using post decrement
  print(num--); //it will print/use the number first than will decrease
}
