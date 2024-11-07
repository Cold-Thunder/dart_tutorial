void main(){
   List<int> numbers = [1,2,3,4,5];

   // updating by index number
   numbers[2] = 10;
   print(numbers);

  // replaceRange()
  // this mathod is used for updating values from specific index to another index
  //  syntax:
  // list_name.replaceRange(int start_index, int end_index, iterable_values)

  numbers.replaceRange(1, 3, [10,20, 30]);
  print(numbers);
}