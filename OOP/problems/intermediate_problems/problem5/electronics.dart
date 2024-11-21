import 'product.dart';

class Electronics extends Product{
  late String _warrantyPeriod;

  Electronics({required String name, required double price, required String warrantyPeriod}):
      _warrantyPeriod = warrantyPeriod, super(name: name, price: price);

  void showElectronicsDetails(){
    print('Name: ${super.name}');
    print('Price: ${super.price}');
    print('Warranty: $_warrantyPeriod');
  }
}