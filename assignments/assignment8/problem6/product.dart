class Product{
  late String _name;
  late double _price;

  Product({required String name, required double price}):
      _name = name, _price = price;

  // using getter
  double get price => _price;
  void applyDiscount(double perc){
    _price = _price - (_price*perc)/100;
    print('Discount price: \$$_price');
  }
}