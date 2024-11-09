// problem: summing a list items

import 'dart:io';

void main(){
  late List<int> numbers;
  // calling number taker
  numbers = input_taker();

  // summer method calling
  int sum_value = sum_func(numbers);
  print(sum_value);
}

// input taker function
List<int> input_taker(){
  late List<int> numbers;
  print("Enter list item seperate with (' ')");
  String items = stdin.readLineSync()!;

  if(items != ''){
    numbers = items.split(' ').map((item){
      int number = int.tryParse(item) ?? 0;
      return number;
    }).toList();
  }
  return numbers;
}

//summer method
int sum_func(List<int> nums){
  int sum = nums.reduce((value, item)=> value + item);
  return sum;
}
