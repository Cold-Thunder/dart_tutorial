import 'dart:io';

void main(){
  print("Enter 1st term: ");
  int? a = int.tryParse(stdin.readLineSync()!);
  print("Enter difference: ");
  int? d = int.tryParse(stdin.readLineSync()!);
  print("Enter terms of numbers: ");
  int? n = int.tryParse(stdin.readLineSync()!);

  if(a != null && d != null && n != null){
    int sum = arithmeticSeriesSum(a, d, n);
    print(sum);
  }else{
    print('Provide a valid number!');
  }
}

arithmeticSeriesSum(int a, int d, int n){
  int sum =a;
  int totalSum = sum;
  // run loop less then the terms number. because 1st is done initializing new_num
  for(int i = 1; i < n; i++){
    sum += d;
    totalSum += sum;
  }
  return totalSum;
}