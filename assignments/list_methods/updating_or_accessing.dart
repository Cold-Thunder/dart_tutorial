void main(){
  // updating or accessing an element from the list
  // methods:
  //[index]: use specific index for accessing
  List<int> numbers = [1,2,3,4,5,6];
  print('Index wish: ${numbers[4]}');

  //[index] = value: setting up a new value
  numbers[4] = 100;
  print('Index wish value: $numbers');

  //fillRange(start, end, value): it will fill between the specific range with values
  numbers.fillRange(2, 5, 1000);
  numbers.fillRange(2, 5, 1000);
  print(numbers);


  // replaceRange(start, end, iterable): it will replace with iterable datas between the range
  List<int> numbers2 = [1,2,3,4,5,6];
  numbers2.replaceRange(2, 5, [100,200,300]);
  print(numbers2);

  // setAll(index, range): it sets all values between the range.
  //                       it replaces the items.
  //                       alternative is insetAll(index, iterable)
  List<int> numbers3 = [100,200,300,400,500];
  numbers3.setAll(2,[5,4]);
  print(numbers3);
  
}