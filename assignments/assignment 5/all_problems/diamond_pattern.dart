import 'dart:io';

void main(){
  print("Please enter row number: ");
  int? row = int.tryParse(stdin.readLineSync()!);
  if(row != null && row > 0){
    diamondPattern(row);
  }else{
    print("Please enter a valid number!");
  }
}

diamondPattern(int rowLength){
  int k = 1;

  for(int i = 1; i <= rowLength; i++){
    // upper shape
      // for spacing loop
      for(int j = 1; j <= rowLength-i; j++){
        stdout.write(" ");
      }
      for(int j = 1; j <= 2*i-1; j++){
        stdout.write("*");
      }
      stdout.write("\n");

    }
  for(int i = 1; i <rowLength; i++) {
    for(int j = 1; j <= i; j++){
      stdout.write(" ");
    }
    for(int j = 2*(rowLength-1)-(i*2-1); j >= 1; j--){
     stdout.write("*");
    }
    stdout.write("\n");

  }
}