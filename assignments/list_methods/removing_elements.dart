void main(){
  List<int> numbers = [1,2,3,4,5];

  // remove methods of Dart List
  // methods:
  // remove(element): remove first occurrence of the list
  //                  it will return true if remove otherwise false
  numbers.remove(3);
  print('using remove(element): $numbers');

  // removeAt(index): remove an element from specific index
  numbers.removeAt(3);
  print('using removeAt(index): $numbers');

  // removeLast(): it will remove the last element of the list
  List<int> numbers2 = [1,2,3,4,5,6];
  numbers2.removeLast();
  print('Using removeLast: $numbers2');

  //removeRange(start, end): it will remove items between the range of index
  numbers2.removeRange(2, 4);
  print('Using removeRange(start, end): $numbers2');

  // removeWhere(condition): it will remove item based of if (!condition) {
                          // that will return boolean
  List<int> numbers3 = [100,200,300,400, 600, 700, 900];
  numbers3.removeWhere((item)=> item > 500);
  print('Using removeWhere(condition): $numbers3');

  // clear(): it will remove all elements from the specific list.
  numbers3.clear();
  print('Using clear(): $numbers3');
 }
