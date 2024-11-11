import 'dart:io';

void main(){
  late List<int> numbers;
  late List<int> removed_dupli;

  // calling item taker
  numbers = items_taker();
  if(numbers.isNotEmpty){
    // calling duplicate remover
    removed_dupli = removeDuplicates(numbers);
    print(removed_dupli);
  }else{
    print('Please enter valid items!');
  }
}

// item taker
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

// item remover method
List<int> removeDuplicates(List<int> numbers){
  List<int> new_numbers = [];
  late Set<int> numbers_set;
  if(numbers.isNotEmpty){
      numbers_set = numbers.toSet();
      new_numbers = numbers_set.toList();
  }
  return new_numbers;
}