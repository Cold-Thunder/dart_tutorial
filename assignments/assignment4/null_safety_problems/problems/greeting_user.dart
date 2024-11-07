import 'dart:io';

void main(){
  // taking user name as input
  print('Please enter your name: ');
  String inputName = stdin.readLineSync()!;

  if(inputName != ''){
    print(greetUser(inputName));
  }else{
    print(greetUser(null));
  }
}

String greetUser(String? name){
  // ternary operator
  String userName = name ?? "Guest";
  return 'Hello, $userName';
}