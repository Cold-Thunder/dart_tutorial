import 'dart:io';

void main(){
  late List<int> numbers;
  late List<int> sorted_list;
    // item taker calling
  numbers = items_taker();

  if(numbers.isNotEmpty){
    print("Enter type: ('asc' or 'desc)/(1 or 2): ");
    print("1. asc:(Ascending)");
    print("2. desc:(descending)");
    String type = stdin.readLineSync()!;

    // checking the type is valid or not
    if(type == '1' || type.toLowerCase() == 'asc' || type == '2' || type.toLowerCase() == 'desc'){
      sorted_list = list_sorter(numbers, type.toLowerCase());
      print(sorted_list);
    }else{
      print('Please enter valid type!');
    }

  }else{
    print('Please enter valid list items!');
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

// list sorting method
List<int> list_sorter(List<int> numbers, String type){
  late List<int> sorted_list;

  if(numbers.isNotEmpty){
    // type checker
      if(type == '1' || type == 'asc'){
        numbers.sort((a,b)=> a.compareTo(b));
        sorted_list = numbers;
      }else{
        numbers.sort((a,b) => b.compareTo(a));
        sorted_list = numbers;
      }
  }
  return sorted_list;
}