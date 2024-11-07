import 'dart:io';

void main() {
  late List<int> numbers;
  late List<int> unique_number;
  // calling list item taker
  numbers = list_taker();
  print(numbers);

  // calling unique item finder
  if (numbers.isNotEmpty) {
    unique_number = unique_item(numbers);
  } else {
    print('Please enter list items!');
  }
  print(unique_number);
}

//list item taker
List<int> list_taker() {
  late List<int> numbers;
  print("Please seperate items with (' ')");
  String num_string = stdin.readLineSync()!;
  numbers = num_string.split(' ').map((item) {
    int num = int.tryParse(item) ?? 0;
    return num;
  }).toList();

  return numbers;
}

// unique item finder
List<int> unique_item(List<int> numbers) {
  List<int> unique_num = [];
  List<int> duplicates = [];

  for (int i = 0; i < numbers.length; i++) {
    for (int j = i + 1; j < numbers.length; j++) {
      if (numbers[i] == numbers[j]) {
        duplicates.add(numbers[i]);
      }
    }
  }
  for (int i = 0; i < numbers.length; i++) {
    // if duplicates is not contains the element
    if (!duplicates.contains(numbers[i])) {
      unique_num.add(numbers[i]);
    }
  }

  return unique_num;
}
