import 'dart:io';

void main(){
  print("Enter 1st term: ");
  int? a = int.tryParse(stdin.readLineSync()!);
  print("Enter common ratio: ");
  int? r = int.tryParse(stdin.readLineSync()!);
  print("Enter terms of numbers: ");
  int? n = int.tryParse(stdin.readLineSync()!);

  if(a != null && r != null && n != null){
    int sum = geomatricSeries(a, r, n);
    print(sum);
  }else{
    print('Provide a valid number!');
  }
}

geomatricSeries(int a, int r, int n){
  int new_num = a;
  int total_sum = new_num;

  // run loop less then the terms number. because 1st is done initializing new_num
  for(int i = 1; i < n; i++){
    new_num *= r;
    total_sum += new_num;
  }
  return total_sum;
}