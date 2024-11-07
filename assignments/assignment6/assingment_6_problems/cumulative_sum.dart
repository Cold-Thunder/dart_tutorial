import 'dart:io';

void main(){
  late List<int> old_list;
  late List<int> new_list_datas;

  print('Please enter list length: ');
  int? length = int.tryParse(stdin.readLineSync()!);
  // calling input taker mathod
  if(length != null){
    old_list = getting_elem(length);
  }
  // calling new list data
  if(old_list.isNotEmpty){
    new_list_datas = new_list(old_list);
  }
  print(new_list_datas);
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

// mathod for creating new list
List<int> new_list(List<int> datas){
  List<int> new_datas = [];
  for(int i = 0; i < datas.length; i++){
    int sum = 0;
    for(int j = 0; j <= i; j++){
      sum += datas[j];
    }
    // adding data to list
    new_datas.add(sum);
  }

  return new_datas;
}