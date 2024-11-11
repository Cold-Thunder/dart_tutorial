import 'dart:io';

void main(){
  late Map<String, int> sums;
  late List<int> numbers;
  // calling item taker
  numbers = items_taker();

  if(numbers.isNotEmpty){
    // calling sum method
    sums = sum_method(numbers);
    print(sums);
  }else{
    print('Please enter valid list data!');
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

// list items sum method
Map<String, int> sum_method(List<int> numbers){
  Map<String, int> sums = {
    'positive_sum': 0,
    'negative_sum' : 0
  };
  int pos_sum = 0;
  int neg_sum = 0;
  if(numbers.isNotEmpty){
    for(int item in numbers){
      if(item > 0){
        pos_sum += item;
      }else{
        neg_sum += item;
      }
    }
    sums['positive_sum'] = pos_sum;
    sums['negative_sum'] = neg_sum;
  }

  return sums;
}