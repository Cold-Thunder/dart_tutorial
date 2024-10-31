import 'dart:io';

void main(){
  print("Please enter terms number: ");
  int? terms = int.tryParse(stdin.readLineSync()!);
  if(terms != null && terms >= 0){
    int sum = alternatingSeriesSum(terms);
    print(sum);
  }else{
    print("Please enter a valid number!");
  }
}

int alternatingSeriesSum(int terms){
  int sum = 0;
  for(int i = 1; i <= 5; i++){
    if(i % 2 != 0){
      sum += i;
    }else{
      sum -= i;
    }
  }
  return sum;
}