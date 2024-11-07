import 'dart:io';

void main(){
  late List<int> nums;
  late List<int> rotated_list;
  // calling list item taker
  nums = numbers();
  print("Please enter steps: ");
  int? step = int.tryParse(stdin.readLineSync()!);
  // calling rotator method
  if(step != null && nums.length != 0){
    rotated_list = rotated(nums, step);
  }
  print(rotated_list);
}

// list item taker method
List<int> numbers(){
  late List<int> numbers_list;
  print("Please enter numbers & separate with (' '):");
  String numbers = stdin.readLineSync()!;
  if(numbers != ''){
    numbers_list = numbers.split(' ').map(
            (item){
              int num = int.tryParse(item) ?? 0;
              return num;
            }
    ).toList();
  }
  return numbers_list;
}

// rotator method & rotated  list
List<int> rotated(List<int> nums, int step){
  // fixed list
   List<int> new_list = new List.filled(nums.length, 0, growable: false);

   for(int i = 0; i < nums.length; i++){
     // checking the current index is greater than length or not
     if(i+step < nums.length){
       new_list[i+step] = nums[i];
     }else if(i+step >= nums.length){
       new_list[(i+step)-nums.length] = nums[i];
     }
   }

   return new_list;
}