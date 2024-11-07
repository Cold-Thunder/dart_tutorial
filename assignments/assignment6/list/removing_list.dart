void main(){
  List<int> numbers = [1,2,3,4,5];

  // Removing list items from list
  // Methods:

  //remove():
  // it removes a item of a provided value from the list
  // syntax:
  // list_name.remove(value);
  numbers.remove(4);
  print(numbers);

  // removeAt():
  // it remove an item of the given index from the list
  //syntax:
  //list_name.removeAt(int index);
  numbers.removeAt(3);
  print(numbers);

  //removeLast():
  // it will remove last item from the list
  numbers.removeLast();
  print(numbers);

  // removeRange():
  // it will remove items from the list between of the range
  // syntax:
  // list_name.removeRange(int start, int end)
  List<int> numbers2 = [100,200,300, 400, 500, 600];
  numbers2.removeRange(1, 4);
  print(numbers2);
}