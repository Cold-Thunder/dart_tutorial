import 'dart:io';

import 'find_even_or_odd.dart';

void main(){
  late List<int> numbers_list;
  late List<int> max_min;
  Map<String, int> max_min_map = {
    "max": 0,
    "min": 0
  };
  // calling list item taker
  numbers_list = item_taker();

  if(numbers_list.length != 0){
    max_min = item_finder(numbers_list);
    max_min_map['max'] = max_min[max_min.length-1];
    max_min_map['min'] = max_min[0];
    print(max_min_map);
  }else{
    print('Please enter valid numbers list!');
  }
}

// list item taker
List<int> item_taker(){
  List<int> numbers = [];
  print('Please enter the length of the list: ');
  int length = int.tryParse(stdin.readLineSync()!) ?? 0;

  if(length > 0){
    // taking input from user
    print('Please enter list items: ');
    for(int i = 0; i < length; i++){
      int? number = int.tryParse(stdin.readLineSync()!);
      if(number != null){
        numbers.add(number);
      }else{
        //if invalid it will decrease index
        print('Please enter a valid item!');
        i--;
      }
    }
  }else{
    print('Please enter a valid length!');
  }

  return numbers;
}

// maximum and minimum finder
List<int> item_finder(List<int> numbers){
  List<int> new_list = [];
  numbers.sort((a, b)=> a.compareTo(b));
  new_list.add(numbers[0]);
  new_list.add(numbers[numbers.length-1]);
  return new_list;
}