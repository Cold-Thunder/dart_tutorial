import 'dart:io';

void main(){
  //calling input taker function
  List<int?> numbers = inputDatas();
  // calling sum calculator function
  int sum = sumNonNullNumbers(numbers);
  print(sum);
}

// input taker function
List<int?> inputDatas(){
  List<int?> datas = [];
  print('Please enter the length of the list: ');
  int? length = int.tryParse(stdin.readLineSync()!);

  if(length != null){
    print("Please enter the list Items: ");
    for(int i = 0; i < length; i++){
      //taking items input from user
       int? number = int.tryParse(stdin.readLineSync()!);
       datas.add(number);
    }
  }
  return datas;
}

// sum of non null numbers
sumNonNullNumbers(List<int?> numbers){
  int sum = 0;
  for(var num in numbers){
    if(num != null){
      sum += num;
    }
  }
  return sum;
}