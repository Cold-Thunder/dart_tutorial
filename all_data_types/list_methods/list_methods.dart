void main() {
  List<int> numbers = [1, 2, 3];

  ///add(element) method.
  /// which will add data at the end of the list.
  numbers.add(1);
  print(numbers);

  ///addAll(iterable element) method
  ///which will add a list of data at the end of the list.
  numbers.addAll([5, 6]);
  print(numbers);

  ///insert(index, element)
  ///can add element at specific index
  numbers.insert(2, 100);
  print(numbers);

  ///remove(element) method
  ///it can remove specific element from the list.
  numbers.remove(3);
  print(numbers);

  ///removeAt(index) method
  ///it will remove a item of a specific index
  numbers.removeAt(2);
  print(numbers);

  ///contains(element)
  ///checks the element is there or not
  print(numbers.contains(2));

  ///indexOf(element)
  ///get index of an element
  print(numbers.indexOf(2));

  ///map() mathod
  ///it transform each elements in the list of new iterable elements.
  List newList = numbers.map((e) => e * 2).toList();
  print(newList);

  ///where()
  ///filter elements on the base of condition
  List whereList = numbers.where((e) => e.isOdd).toList();
  print("where: $whereList");

  ///clear()
  ///it clears the list.
  numbers.clear();
  print(numbers);
}
