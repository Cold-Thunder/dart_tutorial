void main(){
  List<int> numbers = [2, 3, 4, 5, 6, 7, 8, 9, 10];

  // calling prime finder
  List<int> prims = prim_finder(numbers);
  print(prims);
}

List<int> prim_finder(List<int> datas){
  late List<int> prims;

  // calling number checker
  prims = datas.where((item)=> check_number(item)).toList();
  return prims;
}

// number checker is it prime or not
bool check_number(int data){
  bool prim = false;

  if(data <= 3){
    prim = true;
  }else{
    for(int i = 2; i <= data/2; i++){
      if(data % i ==0){
        prim = false;
        break;
      }else{
        prim = true;
      }
    }
  }

  return prim;
}
