import 'product.dart';

class Electronics extends Product{
  Electronics({required String name, required double price}):
          super(name: name, price: price);

  // overriding method
  @override
  void applyDiscount(double perc){
    if(perc <= 30){
      double newPrice = super.price - (super.price*perc)/100;
      print('Discount Price: \$$newPrice');
    }else{
      print('Discount up to 30%');
    }
  }
}