import 'dart:io';

void main(){
  late List<int?> numbers;

  // calling data taker
  numbers = data_taker();
  // calling even_finder
  List<int?> evens = even_finder(numbers);
  print(evens);

}
// data taker
List<int?> data_taker(){
  late List<int?> numbers;
  print("Enter list datas and separate them with (' ')");
  String? data = stdin.readLineSync();
  if(data != ''){
    numbers = data!.split(' ').map((item){
      int? num = int.tryParse(item);
      return num;
    }).toList();
  }
  return numbers;
}
// even finder
List<int?> even_finder(List<int?> datas){
  List<int?> numbers = datas.where((item)=>data_checker(item)).toList();
  return numbers;
}

bool data_checker(int? num){
  if(num != null && num % 2 == 0){
    return true;
  }else{
    return false;
  }
}