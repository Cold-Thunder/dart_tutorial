import 'product.dart';

class Clothe extends Product{
  late String _size;
  Clothe({required String name, required double price, required String size}):
      _size = size, super(name: name, price: price);

  void showClothingDetails(){
    print('Name: ${super.name}');
    print('Price: ${super.price}');
    print('Size: $_size');
  }
}