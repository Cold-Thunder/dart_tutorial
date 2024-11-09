import 'dart:io';

void main(){
  late List<int?> list1;
  late List<int?> list2;

  list1 = item_taker(1);
  list2 = item_taker(2);

  // concatinating 2 lists
  list1.addAll(list2);

  // converting the list into set
  Set<int?> list_to_set = list1.toSet();
  List<int?> set_to_list = list_to_set.toList();
  print(set_to_list);
}

// item taker method
List<int?> item_taker(int i){
  late List<int?> list_items;
  print("Please enter list $i datas separte with (' ')");
  String items = stdin.readLineSync()!;

  if(items != ''){
    list_items = items.split(' ').map((item){
      int? number = int.tryParse(item);
      if(number != null){
        return number;
      }else{
        return null;
      }
    }).toList();
  }
  return list_items;
}