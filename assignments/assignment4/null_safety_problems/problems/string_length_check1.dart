import 'dart:io';
void main(){
  // taking a input a string
  print('Please input a string: ');
  // ! = null check operator is using.
  // because input data won't be null
  String text = stdin.readLineSync()!;

  String? newText;
  // checking the input text is empty string or not
  if(text == ''){
    newText = null;
  }else{
    newText = text;
  }
  print(getLength(newText));
}

// creating a function that will take nullable string
int getLength(String? text){
  late int value;
  value = text != null ? text.length : -1;
  // if(text != null){
  //   return text.length;
  // }else{
  //   return -1;
  // }
  return value;
}