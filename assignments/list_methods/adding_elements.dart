void main(){
  List<int> numbers = [1,2,3,4,5];

  // item adding mathods
  // add(element): this will add element at the end of the list
  numbers.add(7);
  print('List after adding element: $numbers');

  //addAll(element): this will add iterable object at the end
  //                     that can be other list or many items
  numbers.addAll([10,20,30,40, 50]);
  print("AddAll method: $numbers");

  //insert(index, element): add an element at the specific index
  List<int> numbers2 = [1, 3,4,5,6,7];
  numbers2.insert(2, 1000);
  print(numbers2);

  // insertAll(index, elements): add iterable object at the specific index
  numbers2.insertAll(3, [100,200, 300, 400, 500]);
  print(numbers2);
}