import 'dart:io';

void main(){
  late List<int> numbers;
  late int? occur;
  late int count;

  // calling items taker
  numbers = items_taker();
  print('Please enter the number you want to count: ');
  occur = int.tryParse(stdin.readLineSync()!);
  if(numbers.isNotEmpty){
    if(occur != null){
      count = countOccurrences(numbers, occur);
      print(count);
    }else{
      print('Please enter a valid occurence!');
    }
  }else{
    print('Please enter valid item!');
  }
}

//list items taker
List<int> items_taker(){
  List<int> numbers = [];
  print("Enter items and separate with(' '):");
  String num_string = stdin.readLineSync()!;
  if(num_string != ''){
    numbers = num_string.split(' ').map((item){
      int number = int.tryParse(item) ?? 0;
      return number;
    }).toList();
  }
  return numbers;
}

// occurence checker item
int countOccurrences(List<int> numbers, int occur){
  int count = 0;

  if(numbers.isNotEmpty){
    for(int item in numbers){
      if(item == 2){
        count += 1;
      }
    }
  }
  return count;
}