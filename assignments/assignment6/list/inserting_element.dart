void main(){
  List<int> numbers = [1,2,3,4,5];

  // uses of mathods
  // add() :
  // this will add an element at the end of the list
  numbers.add(10);
  print(numbers);

  //addAll():
  // this will add all the elements of a list in another list
  numbers.addAll([100,200,300,400]);
  print(numbers);

  //insert():
  // syntax: list_name.insert(index, value)
  // this will insert element in specific index
  numbers.insert(0, 500);
  print(numbers);

  // insertAll():
  // syntax: list_name.insertAll(index, [list of elements])
  // this will all elements of a list in one list
  List<int> numbers2 = [10,20,30];
  numbers2.insertAll(numbers2.length, [400,500, 600, 700]);
  print(numbers2);
}