import 'dart:io';

void main(){
  late List<int> marks_list;
  late List<String> grade_list;
  // calling item taker
  marks_list = items_taker();

  if(marks_list.length != 0){
    // calling calculateGrade
    grade_list = calculateGrade(marks_list);
    print(grade_list);
  }else{
    print('Please enter valid marks!');
  }
}

// item taker method
List<int> items_taker(){
  List<int> numbers = [];
  print("Enter numbers and separate with (' '): ");
  String num_string = stdin.readLineSync()!;
  if(num_string != ''){
    numbers = num_string.split(' ').map((item){
      int num = int.tryParse(item) ?? 0;
      return num;
    }).toList();
  }

  return numbers;
}

// grade calculator
List<String> calculateGrade(List<int> numbers){
    List<String> grades = [];
    // checking list length
    if(numbers.isNotEmpty){
      // checking numbers
      grades = numbers.map((item){
        if(item >= 90 && item <= 100){
          return 'A';
        }else if(item >= 70 && item < 90){
          return 'B';
        }else if(item >= 60 && item <70){
          return 'C';
        }else if(item >= 50 && item < 60){
          return 'D';
        }else{
          return 'F';
        }
      }).toList();
    }

    return grades;
}