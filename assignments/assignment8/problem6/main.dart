import 'clothing.dart';
import 'electronics.dart';
import 'product.dart';

void main(){
  Electronics electronics1 = Electronics(name: 'Light', price: 100);
  electronics1.applyDiscount(20);

  Clothing cloth1 = Clothing(name: 'T-shirt', price: 200);
  cloth1.applyDiscount(40);
}