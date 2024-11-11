void main(){
  List<int> numbers = [1,2,3,4,5];

  // methods of mapping and reducing
  // forEach(action): it will apply action on the elements of the list elements.
  //                     it won't return a new iterable object
  numbers.forEach((item){
    print(item*2);
  });

  // map(action): it will apply action on the elements of the list elements.
//                it will return a new iterable object
  List<int> new_numbers = numbers.map((item){
    return item*2;
  }).toList();
  print('Used map(action): $new_numbers');

  // reduce(combine): it combines all the elements into one element
  int new_number = numbers.reduce((value, item)=> value + item);
  print('Used reduce: $new_number');
}