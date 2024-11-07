import 'dart:io';

void main(){
  print("Enter number for multiplication table start: ");
  int? num = int.tryParse(stdin.readLineSync()!);
  print('Please please enter the limit of number: ');
  int? limit = int.tryParse(stdin.readLineSync()!);

  if(num != null && limit != null){
    printMultiplicationTable(num, limit);
  }else{
    print("Enter valid number!");
  }
}

printMultiplicationTable(int num, int limit){
  for(int i = 1; i <= limit; i++){
    print('$num x $i = ${num*i}');
  }
}