import 'dart:io';

void main(){
  //taking input position of the number
  print('Please enter the position of the number: ');
  int? nth = int.tryParse(stdin.readLineSync()!);
  late int number;
  // checking the input number
  if(nth != null && nth >= 0){
    number = nth_fibnacci(nth);
    print(number);
  }else{
    print("Pleae enter a valid position!");
  }
}

int nth_fibnacci(int nth){
  late int nth_number;
  int n2th_number = 1;
  int n1th_number = 0;

  int i =2;
  // checking the input number is greater than i or not
  if(nth < i){
    nth_number = nth;
  }else{
    // applying while loop
    while(i <= nth){
      int item = n2th_number + n1th_number;
      if(i == nth){
        nth_number = item; //setting number
      }else{
        // exchanging numbers
        n1th_number = n2th_number;
        n2th_number = item;
      }
      i++;
    }
  }

  return nth_number;
}

// 0, 1, 1, 2, 3, 5, 8, 13, 21, 34