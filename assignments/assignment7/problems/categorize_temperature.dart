import 'dart:io';

void main(){
  late List<int> temps;
  late List<String> categorized_list;
  temps = item_taker();

  // checking temps list length
  if(temps.length !=0){
    // calling category method
    categorized_list = categorizeTemperatures(temps);
    print(categorized_list);
  }else{
    print('Please enter a list numbers!');
  }
}

// list item taker
List<int> item_taker(){
  List<int> numbers = [];
  print('Please enter the length of the list: ');
  int length = int.tryParse(stdin.readLineSync()!) ?? 0;

  if(length > 0){
    // taking input from user
    print('Please enter list items: ');
    for(int i = 0; i < length; i++){
      int? number = int.tryParse(stdin.readLineSync()!);
      if(number != null){
        numbers.add(number);
      }else{
        //if invalid it will decrease index
        print('Please enter a valid item!');
        i--;
      }
    }
  }else{
    print('Please enter a valid length!');
  }

  return numbers;
}

// categoring temperatures
List<String> categorizeTemperatures(List<int> temps){
  List<String> temps_cat = [];

  // running a loop through the temp list
  for(int temp in temps){
    // checking list temps
    if(temp < 15){
      temps_cat.add('cold');
    }else if(temp >= 15 && temp <= 30){
      temps_cat.add('warm');
    }else{
      temps_cat.add('hot');
    }
  }

  return temps_cat;
}