import 'dart:io';

void main(){
  print("Please enter the row number: ");
  int? length = int.tryParse(stdin.readLineSync()!);
  if(length != null){
    rightAlignStars(length);
  }else{
    print('Provide a valid number!');
  }
}

rightAlignStars(int length){
  for(int i = 1; i <= length; i++){
    for(int j = 1; j <=length-i; j++){
      stdout.write(" ");
    }
    for(int j = 1; j <= i; j++){
      stdout.write("*");
    }
    stdout.write("\n");
  }
}