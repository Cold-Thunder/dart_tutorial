import 'dart:io';

void main() {
  print('Please enter 1st number: ');
  int num1 = int.tryParse(stdin.readLineSync()!) ?? 0;
  print("Please enter 2nd number: ");
  int num2 = int.tryParse(stdin.readLineSync()!) ?? 0;

  //checking greater than or equal/ less than or equal
  if (num1 >= num2 || num1 <= num2) {
    if (num1 == num2) {
      //checking is equal to or not
      print("Equal to");
    } else if (num1 != num2) {
      //checking not equal to
      if (num1 > num2) {
        //checking greater than or not
        print('$num1 is greater than $num2');
      } else if (num1 < num2) {
        //checking less than or not
        print('$num1 is less than $num2');
      }
    }
  }
}
