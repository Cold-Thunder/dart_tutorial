import 'dart:io';

void main(){
  late List<int> numbers;
  late List<int> prime_numbers;
  // calling item taker
  numbers = items_taker();

  if(numbers.isNotEmpty){
    prime_numbers = items_checker(numbers);
    print(prime_numbers);
  }else{
    print('Please enter valid list!');
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

// prime number checker
List<int> items_checker(List<int> numbers){
  List<int> prime_numbers = [];
  if(numbers.isNotEmpty){
    // calling checker method
    prime_numbers = numbers.where((item)=>filterer(item)).toList();
  }
  return prime_numbers;
}

// checking numbers
bool filterer(int number){
  late bool isPrime;
  if(number <= 3){
    isPrime = true;
  }else if(number > 3){
    // running loop from 2 for division
    for(int i = 2; i<= number/2; i++){
      if(number % i == 0){
        isPrime = false;
        break;
      }else{
        isPrime = true;
      }
    }
  }

  return isPrime;
}