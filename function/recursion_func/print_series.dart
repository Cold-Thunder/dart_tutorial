import 'dart:io';

void main(){
  printSeries(10);
}

printSeries(int n){
  if(n == 0){
    stdout.write(n);
  }else{
    printSeries(n-1);
    stdout.write(n);
  }
}