import 'dart:io';

void main(){
  late List<int> numbers;
  late List<int> cumulative_list;
  // calling number taker
  numbers = input_taker();
  // calling cumulative sum method
  cumulative_list = cumulative_sum(numbers);
  print(cumulative_list);
}

// input taker
List<int> input_taker(){
  late List<int> numbers;

  print("Please enter List items and seperate with(' ')");
  String nums_string = stdin.readLineSync()!;

  if(nums_string.length != 0){
    numbers = nums_string.split(' ').map((item){
      int num = int.tryParse(item) ?? 0;
      return num;
    }).toList();
  }

  return numbers;
}

// cumulative_sum mathod
List<int> cumulative_sum(List<int> numbers){
  late List<int> new_list;
  int sum = 0;
  new_list = numbers.map((item){
    sum += item;
    return sum;
  }).toList();

  return new_list;
}