import 'dart:io';

void main(){
  late List<List> table_list;

  print("Please enter multiplication table's number: ");
  int? number = int.tryParse(stdin.readLineSync()!);

  // calling multiplication table
  if(number != null){
    table_list = multiplicationTable(number);
    print(table_list);
  }else{
    print('Please enter a valid number!');
  }

}

// multiplication table method
List<List> multiplicationTable(int number){
  List<List> table = [];

  for(int i = 1; i <= 10; i++){
    List<int> items = [number, i, number*i];
    table.add(items);
  }

  return table;
}