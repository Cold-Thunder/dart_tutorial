void main(){
  List<int> numbers = [1,2,3,4,5,6];

  // any(test): it will check all the elements according to condition.
  //               if any of those satisfy condition it will return true.
  //               if any of those doesn't match it will return false

  bool is_even = numbers.any((item)=> item % 2 == 0);
  print('Using any(test): $is_even');

  ///every(test): it will check all the elements according to condition.
  ///             if any of those dissatisfy condition it will return false
  bool is_less = numbers.every((item)=> item % 2 == 0);
  print('Using every(test): $is_less');


  // join([seeprator]): it will convert the list into a String.
  //                       with optional separtor
  String nums_string = numbers.join('');
  print('Using join(): $nums_string');


  // subList(start_index, end_index): it will return a sub list from starting and ending index
  List<int> sub_list = numbers.sublist(1, 5);
  print('using sublist(): $sub_list');
}