void main(){
  print(printData(5));
}

int printData(int n){
  if(n == 1){
    return 1;
  }else{
    return n*printData(n-1);
  }
}