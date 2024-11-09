import 'dart:io';

void main(){
  late List<int> numbers;

}

List<int?> nums(){
  List<int?> datas = [];
  print("Please enter the list length: ");
  int? length = int.tryParse(stdin.readLineSync()!);
  if(length != null){
    for(int i =0; i <= length; i++){
      int? num = int.tryParse(stdin.readLineSync()!);
      datas.add(num);
    }
  }
  return datas;
}