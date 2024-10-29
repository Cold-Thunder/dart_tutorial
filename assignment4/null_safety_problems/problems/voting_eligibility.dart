import 'dart:io';

void main(){
  print("Name: ");
  String inputName = stdin.readLineSync()!;
  print("Age: ");
  String inputAge = stdin.readLineSync()!;

  String? name = inputName.isNotEmpty ? inputName : null;
  int? age = int.tryParse(inputAge);

  // calling eligibility checker function
  print(canVote(name, age));

}
// eligibility function
String canVote(String? name, int? age){
  late String message;
  if(name == null){
    message = 'Unknown person.';
  }
  if(age == null){
    message = 'Age not provided.';
  }
  if(name != null && age != null){
    message = age >= 18 ? '$name can vote' : "$name is not eligible to vote";
  }
  return message;
}