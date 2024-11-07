import 'dart:io';

void main(){
  // taking input a character
  print("Please enter a character: ");
  String? char = stdin.readLineSync()!;

  // checking the length of the string
  if(char.length > 1){
    print('Please enter a valid character!');
  }else{
    // converting to lower case
    char = char.toLowerCase();
    // checking character
    if(char == "a" || char == 'e' || char =="i" || char == 'o' || char == 'u'){
      print("Vowel");
    }else{
      print("Consonant");
    }
  }
}