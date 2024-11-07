import 'dart:io';

void main(){
  late String word;
  // calling word taker
  word = take_string();
  // calling capitalizer
  String new_word = capitalizer(word);
  print(new_word);
}

// taking string
String take_string(){
  print('Please enter a word: ');
  String word = stdin.readLineSync()!;

  if(word != ''){
    return word;
  }else{
    return 'Please enter a valid string';
  }
}

// capitalizer
String capitalizer(String word){
  String new_word = '';
  for(int i = 0; i < word.length; i++){
    if(i % 2 == 0){
      new_word += word[i].toUpperCase();
    }else{
      new_word += word[i].toLowerCase();
    }
  }
  return new_word;
}