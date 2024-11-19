class Product{
  late String _name;
  late double _price;

  Product({required String name, required double price}): _name = name, _price = price;

  String get name => _name;

  void updatePrice(double value){
    if(value > _price){
      _price = value;
    }else{
      print('New price is not greater than previous value');
    }
  }

  void productPrice(){
    print('Current Price: $_price');
  }

  void details(){
    print('Name: $name');
    print('Price: $_price');
  }

}