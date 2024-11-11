void main() {
  List<int> numbers = [5, 2, 2, 1, 6, 8, 3];

  // sorting and ordering methods in dart
  // methods:
  // sort([compare]): it sorts elements compare to other elements.
  // ascending order
  numbers.sort((a, b) => a.compareTo(b));
  print("Ascending order: $numbers");
  // descending order
  numbers.sort((a, b) => b.compareTo(a));
  print("Descending order: $numbers");


  // shuffle(): it randomize the items of the list
  numbers.shuffle();
  print('Using shuffle() for randomize: $numbers');

  // reversed(): it returns an iterable object in reversed order of the list elements
  List<int> new_list = numbers.reversed.toList();
  print('Use reversed method: $new_list');

  //asMap(): it will return a map of elements and index as a key;
  Map<int, int> new_map =  numbers.asMap();
  print('Used asMap(): $new_map');
}
