import 'dart:io';

void main(){
  late int a,b;

  print('Please enter 2 numbers: ');
  for(int i =1; i <= 2; i++){
    int? num = int.tryParse(stdin.readLineSync()!);
    if(num != null){
      if(i ==1){
        a = num;
      }else{
        b = num;
      }
    }
  }

  // calling the function
  int sum1 = sum(a,b);
  print(sum1);
}

//function for adding two numbers
int sum(int a, int b){
  return a + b;
}