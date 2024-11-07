import 'dart:io';

void main(){
  late List<int> numbers;
  print('Please enter the length: ');
  int? length = int.tryParse(stdin.readLineSync()!);
  // calling element taker
  if(length != null){
    numbers = getting_elem(length);
  }else{
    print('Please enter a valid length!');
  }

  int unique = finder(numbers);
  print(unique);
}

// list item taking mathod
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

// unique item finder
int finder(List<int> numbers){
  late int unique;
  List<int> unique_data = [];
  List<int> duplicated_items = [];

  for(int i =0; i< numbers.length; i++){
    for(int j = i+1; j < numbers.length; j++){
      if(numbers[i] != numbers[j]){
        unique = numbers[i];
        unique_data.add(unique);
        break;
      }
    }
    if(unique_data.isNotEmpty){
      break;
    }
  }
  return unique;
}