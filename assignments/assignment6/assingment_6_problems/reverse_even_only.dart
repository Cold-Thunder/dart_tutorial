import 'dart:io';

void main(){
  late List<int> numbers;
  late List<int> new_reversed_data;

  print("Please enter the length of the list: ");
  int? length = int.tryParse(stdin.readLineSync()!);

  // calling data taker method
  if(length != null){
    numbers = getting_elem(length);
  }else{
    print('Please enter a valid length!');
  }

  //calling reversed int method
  new_reversed_data = reverse_int(numbers);
  print(new_reversed_data);
}

// list item taking method
List<int> getting_elem(int length){
  List<int> numbers = [];
  print("Please enter the list elements: ");
  for(int i =1; i <= length; i++){
    int? data = int.tryParse(stdin.readLineSync()!);
    if(data != null){
      numbers.add(data);
    }else{
      print('Please enter a numbers!');
      i--; //decreasing index 1
    }
  }
  return numbers;
}

// reversing method of even
List<int> reverse_int(List<int> numbers){
  List<int> even_nums = [];
  List<int> new_reversed_list = [];

  for(int item in numbers){
    if(item % 2 == 0){
      even_nums.add(item);
    }
  }
  // reversed even list
  var reversed_even = even_nums.reversed;
  List<int> reversed_list = List.from(reversed_even);
  // adding data to new list
  int i =0;
  for(int item in numbers){
    if(item % 2 == 0){
      new_reversed_list.add(reversed_list[i]);
      i++;
    }else{
      new_reversed_list.add(item);
    }
  }

  return new_reversed_list;
}