void main(){
  List<int> numbers = [1,2,3,4,5];

  // properties
  //length: this will show the length of the list
  print('List length: ${numbers.length}');

  // isEmpty: this will check empty or not. will return boolean
  print('Is the list empty: ${numbers.isEmpty}');

  // isNotEmpty: this will check is not empty or not. will return boolean
  print('Is the list not empty: ${numbers.isNotEmpty}');

  //first: return first item of the list
  print('First item: ${numbers.first}');

  // last: return last item of the list
  print('Last item: ${numbers.last}');

  // reversed: return iterable list in reversed order
  print(numbers.reversed);
}