// As we have discussed in the Dart introduction,
// it is a lexical scope language which means
// the variable's scope is decided at compile-time.


// dart function is a set of code that together perform a specific task
// syntax:
// return_type function_name(parameter_list){
  // statements
  // return value
// }

//return type; int, double, String, bool, void, List
//function name: meaningful identifier
//parameter list: list of values that will be passed
//return value: value will be returned after execution

void main(){
  // calling the function
  String nam1 = name("Hemal");
  print(nam1);
}

//creating a function that will return string
String name(String name){
  return 'My name is $name';
}