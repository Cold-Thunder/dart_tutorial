void main(){
  // searching and filtering methods helps to filter and find out specific data
  // methods
  // contains(element): check specific element in the list
  List<int> numbers = [1,2,3,4,5];
  print('using contains method: ${numbers.contains(3)}');

  // indexOf(element, [start_searching]): it will search specific element from the specific index
  //                                      from the starting
  int index = numbers.indexOf(4, 2);
  print('using indexOf(element, start): $index');
  int index2 = numbers.indexOf(3);
  print('Using indexOf(element): $index2');


  // where(condition): it search specific item from list based on condition
  //                       and return a list
  List<int> new_numbers = numbers.where((item)=> item % 2 == 0).toList();
  print(new_numbers);
  
}