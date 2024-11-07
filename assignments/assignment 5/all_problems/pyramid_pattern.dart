import 'dart:io';

void main(){
  print('Please enter the length of pyramid: ');
  int? length = int.tryParse(stdin.readLineSync()!);
  // calling the pattern function
  if(length != null){
    pyramidPattern(length);
  }else{
    print('Enter valid length!');
  }
}

pyramidPattern(int length){
  for(int i =1; i <= length; i++){
    for(int j = 1; j <= i; j++){
      stdout.write(j);
    }
    stdout.write("\n");
  }
}