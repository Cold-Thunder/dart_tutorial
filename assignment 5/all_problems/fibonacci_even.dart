import 'dart:io';

void main(){
  late List<int> even_fibonacci_list;
  print("Please provide length of the first even numbers: ");
  int? length = int.tryParse(stdin.readLineSync()!);

  if(length != null){
    even_fibonacci_list = evenFibonacciSeries(length);
    print(even_fibonacci_list);
  }else{
    print("Please provide a valid number!");
  }
}

List<int> evenFibonacciSeries(int length){
  int n2th_number = 1;
  int n1th_number = 0;

  List<int> even_fibonacci = [0];

  int i =0;
  while(even_fibonacci.length != length){
    // adding previous number
    int item = n2th_number + n1th_number;
    // checking the number is even or not
    if(item % 2 == 0){
      even_fibonacci.add(item);
    }
    n1th_number = n2th_number;
    n2th_number = item;
    i++;
  }
  return even_fibonacci;
}