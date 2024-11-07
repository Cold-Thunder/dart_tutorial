import 'dart:io';

void main(){
  late List<String> words;
  print("please enter the words list length: ");
  int? length = int.tryParse(stdin.readLineSync()!);
  // calling word taker
  if(length != null){
    words = getting_words(length);
  }else{
    print('Please enter a valid length: ');
  }

  // calling word checker
  if(words.isNotEmpty){
    String word = word_length(words);
    print(word);
  }
}

// word getting method
List<String> getting_words(int length){
  List<String> words = [];
  print('Please enter words: ');
  for(int i = 0; i < length; i++){
    String word = stdin.readLineSync()!;
    words.add(word);
  }
  return words;
}

// word length counting method
String word_length(List<String> words){
  // primary value is the first item
  late String word = words[0];
  // appling loop on the list
  for(int i = 1; i < words.length; i++){
    // checking the words
    if(words[i].length > words[i-1].length){
      word = words[i];
    }else if(words[i].length == words[i-1].length){
      word = words[i-1];
    }
  }
  return word;
}