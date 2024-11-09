import 'dart:io';

void main(){
  late List<String> input_list;
  late List<String> new_list;
  // calling data taker
  input_list = words_taker();
  // calling capitalizer
  new_list = capitalized_word(input_list);
  print(new_list);
}

// words list items taker
List<String> words_taker(){
  late List<String> words_list;
  print("Please enter words and saperate with (' ')");
  String words = stdin.readLineSync()!;

  if(words.length != 0) {
    words_list = words.split(' ').map((item) => item).toList();
  }
  return words_list;
}

//letters capitalizer
List<String> capitalized_word(List<String> words){
  late List<String> new_list;

  new_list = words.map((item){
    String word = '';
    for(int i = 0; i < item.length; i++){
      if(i == 0){
        word += item[0].toUpperCase();
      }else if(i >= 1){
        word += item[i];
      }
    }
    return word;
  }).toList();
  return new_list;
}