import 'dart:io';

void main(){
  //series
  late List<int> series;
  // taking input the length of series
  print("Please enter the length of the series: ");
  int? length = int.tryParse(stdin.readLineSync()!);

  if(length != null){
    // calling generate fibonacci number
    series = generate_fibonacci(length);
    print(series);
  }else{
    print("Please provide a valid length!");
  }
}

// generating fibonacci number method
List<int> generate_fibonacci(int length){
  List<int> series = [0,1];

  for(int i = 2; i < length; i++){
    int sum = series[i-1] + series[i-2];
    series.add(sum);
  }
  return series;
}

// fibonacci 1st and last term will be taken from user