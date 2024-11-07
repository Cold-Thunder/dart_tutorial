import 'dart:io';

void main(){
  late List<int> letter_number;
  // taking word input
  String word = take_word();
  //calling counter
  letter_number = calculate_letters(word);
  print("Vowel: ${letter_number[0]}, consonants: ${letter_number[1]}");
}

// taking input a word
String take_word(){
  print('Please enter a word: ');
  String word = stdin.readLineSync()!;

  if(word != ''){
    return word;
  }else{
    return 'Please enter a valid word!';
  }
}

// counting letter
List<int> calculate_letters(String word){
  int vowel = 0;
  int consonant =0;
  for(int i = 0; i < word.length; i++){
    if(word[i] == 'a' || word[i] == 'e' || word[i] == 'i' || word[i] == 'o' || word[i] == 'u'){
      vowel += 1;
    }else{
      consonant += 1;
    }
  }
  return [vowel, consonant];
}