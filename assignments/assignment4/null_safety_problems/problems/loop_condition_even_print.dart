import 'dart:io';

void main(){
  // taking input a max value from user
  print('Please enter the maximum number: ');
  String inputNumber = stdin.readLineSync()!;

  /// checking input data
  /// is it empty string or not
  if(inputNumber != ''){
    int? number = int.tryParse(inputNumber);
    // checking number is null or not
    if(number != null){
      printEvenNumber(number);
    }else{
      print('Please enter a valid number!');
    }
  }else{
    print('Please enter a valid number!');
  }
}

// printing even number function
printEvenNumber(int max){
  if(max < 2){
    print('No even numbers.');
  }else{
    int i =0;
    while(i <= max){
      print(i);
      i+=2;
    }
  }
}