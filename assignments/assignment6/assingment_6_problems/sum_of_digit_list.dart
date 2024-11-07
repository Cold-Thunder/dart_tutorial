import 'dart:io';

void main(){
  late List<int> numbers;
  late List<int> sum_list;
  print('Please enter the list length: ');
  int? length = int.tryParse(stdin.readLineSync()!);
  // calling list item taker
  if(length != null){
    numbers = getting_elem(length);
  }else{
    print('Please enter a valid length!');
  }
  // calling summing method
  sum_list = sum_of_items(numbers);
  print(sum_list);
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

// sum of the list items
List<int> sum_of_items(List numbers){
  List<int> sum_list = [];
  for(int num in numbers){
    int sum = 0;
    // converting number to string to find length
    int num_length = num.toString().length;
    for(int j =0; j < num_length; j++){
      // adding per digits
      sum += int.parse(num.toString()[j]);
    }
    sum_list.add(sum);
  }
  return sum_list;
}