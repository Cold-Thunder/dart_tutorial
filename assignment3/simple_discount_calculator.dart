import 'dart:io';

void main(){
  // taking original price
  print("Please enter the price:");
  double? price = double.tryParse(stdin.readLineSync()!);
  // taking discount
  print("Please enter the discount: ");
  double? discount = double.tryParse(stdin.readLineSync()!);
  //checking validity
  if(discount! > 50){
    print("Invalid discount");
  }else{
    double dis_price = price! - (price*discount)/100;
    print(dis_price);
  }
}