class Product{
  late String _name;
  late double _price;

  Product({required String name, required double price}):
      _name = name, _price = price;

  String get name => _name;
  double get price => _price;
}