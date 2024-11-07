import 'dart:io';

void main() {
  // taking length from user
  print("Please enter the length of the series: ");
  int? length = int.tryParse(stdin.readLineSync()!);

  if (length != null) {
    // calling sum function
    int sum = sumFibonacci(length);
    print(sum);
  } else {
    print("Please enter a valid length!");
  }
}

//fibonacci sum mathod
int sumFibonacci(int length) {
    //series
    List<int> series = [0, 1];
    // sum of the series
    int sum = series[1];
    for (int i = 2; i < length; i++) {
      int list_value = series[i - 2] + series[i - 1];
      series.add(list_value);
      sum += list_value;
    }
    return sum;
}
