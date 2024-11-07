import 'dart:io';

void main(){
  late List<int> numbers;
  late int sum_of_range;

  print('Please enter the length of list: ');
  // taking length
  int? length = int.tryParse(stdin.readLineSync()!);

  print('Index of the Range (Start and end): ');
  int? start = int.tryParse(stdin.readLineSync()!);
  int? end = int.tryParse(stdin.readLineSync()!);
  if(length != null){
    numbers = getting_elem(length);
  }else{
    print('Enter a valid length!');
  }

  // calling sum_range method for sum
  if(start != null && end != null && numbers.length != 0){
    sum_of_range = sum_range(numbers, start, end);
  }else{
    print('Start or End index is not valid!');
  }
  print(sum_of_range);
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

// method of sum the elements between the range
int sum_range(List<int> numbers, int start,int end){
  int sum = 0;
  for(int i = start; i <= end; i++){
    sum += numbers[i];
  }
  return sum;
}
