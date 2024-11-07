void main(){
  //initializing integer value list
  List<int> numInt = [1,2,3,4,5];

  //converting integer list into String list
  List<String> numString = numInt.map((e)=>e.toString()).toList();

  // checking string or not
  for(String num in numString){
    print("$num is String: ${num is String}");
  }
}