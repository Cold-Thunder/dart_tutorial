import 'dart:io';

void main(){
  List<int> numbers_list = [];
  List<int> new_numbers = [];
    // calling list item taker method
  numbers_list = numberTaker();
  // checking numbers length is greater then 0 or not
  if(numbers_list.length != 0){
    print('Please enter searching type (odd or even)/(1 or 2): ');
    print('1. Odd');
    print('2. Even');
    String type =  stdin.readLineSync()!;
    // checking number is null or not and type
    if(type == '1' || type == '2' || type.toLowerCase() == 'odd' || type.toLowerCase() == 'even'){
      // calling filterNumber
      new_numbers = filterNumber(numbers_list, type);
    }else{
      print('Please choice a valid option!');
    }
    // checking new_numbers list length
    if(new_numbers.length != 0){
      print(new_numbers);
    }
  }else{
    print('Please enter valid list item!');
  }
}



// number taker mathod
List<int> numberTaker(){
  List<int> numbers = [];
  print("Please enter the list items and separate with (' '): ");
  String num_string = stdin.readLineSync()!;
  if(num_string != ''){
    numbers = num_string.split(' ').map((item){
      int? number = int.tryParse(item);
      return number ?? 0;
    }).toList();
  }

  return numbers;
}



// numbers filter method
List<int> filterNumber(List<int> numbers, String type){
    late List<int> typed_num;

    if(type == '1' || type == 'odd'){
      typed_num = numbers.where((item)=>item %2 != 0).toList();
    }else{
      typed_num = numbers.where((item)=>item%2 == 0).toList();
    }
    return typed_num;
}