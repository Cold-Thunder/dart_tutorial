import 'product.dart';

class Clothing extends Product{
  Clothing({required String name, required double price}):
      super(name: name, price: price);

  @override
  void applyDiscount(double perc){
    if(perc <= 100) {
      double newPrice = super.price - (super.price * perc) / 100;
      print('Discount Price: \$$newPrice');
    }else{
      print("Discount can't be more then 100%");
    }
  }
}