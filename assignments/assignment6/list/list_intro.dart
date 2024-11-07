/// List is a ordered collection of data
///syntax:
/// List <data_type> list_name = [];
///
/// 2 types of list:
///   1. Fixed Length List
///       example: var list_name = new List(size)
///   2. Growable List
///       example: List list_name = []


void main(){
  // fixed length list
  var numbers = new List<int?>.filled(5, null);
  numbers[0] = 10;
  numbers[1] = 15;
  numbers[2] = 20;
  numbers[3] = 30;
  numbers[4] = 50;
  print(numbers);

  // growable list
  List<int> new_list = [];
  new_list.add(10);
  new_list.add(20);
  new_list.add(30);
  print(new_list);
}