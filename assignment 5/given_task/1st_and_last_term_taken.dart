import 'dart:io';

// problem:
// first and last term will be taken from the user

void main() {
  late List<int> series;
  print("Please enter the 1st term: ");
  int? firstTerm = int.tryParse(stdin.readLineSync()!);
  print("Please enter last term: ");
  int? lastTerm = int.tryParse(stdin.readLineSync()!);

  if (firstTerm != null && lastTerm != null) {
    series = fibonacci_series(firstTerm, lastTerm);
    print(series);
  } else {
    print('Please provide valid terms!');
  }
}

List<int> fibonacci_series(int first, int last) {
  int nth_1_pos = 0;
  int nth_2_pos = 1;

  List<int> series = [];

  //checking the term is less than or equal to 2
  // and greater than and equal to 1
  if (first <= 2 && first >= 1) {
   if(first == 1){
     // adding to the list
     series.add(nth_1_pos);
     series.add(nth_2_pos);
   }else if(first == 2){
     series.add(nth_2_pos);
   }
  }
  for (int i = 3; i <= last; i++) {
    int item = nth_1_pos + nth_2_pos;
    nth_1_pos = nth_2_pos;
    nth_2_pos = item;
    if (i >= first) {
      // adding to the list
      series.add(item);
    }
  }

  return series;
}

