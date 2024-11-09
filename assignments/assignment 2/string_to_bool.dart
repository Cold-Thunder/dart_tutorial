import 'dart:io';

void main(){
  //taking input bool as string
  print('Please input a boolean value (true or false):');
  String? boolString = stdin.readLineSync();

  if(boolString == ''){
    print("Please provide a valid boolean value!");
  }else{
    //converting string to boolean value
    bool boolValue = bool.parse(boolString!);
    boolValue is bool ? print("It is a boolean value") : print('Not a boolean value!');
  }

}