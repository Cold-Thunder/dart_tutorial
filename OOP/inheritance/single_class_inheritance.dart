// in single class inheritance a class inherit properties from a single class
void main(){
  Toyota toyota1 = Toyota(brand: 'Toyota', price: 12143232, model: '1212hk');
  toyota1.details();
}


class Car{
  final String brand;
  final double price;

  // using named parameter
  Car({required this.brand, required this.price});
  void details(){
    print('Brand: $brand');
    print('Price: $price');
  }
}

class Toyota extends Car{
  final String model;

  Toyota({required String brand, required double price, required this.model}):
      super(brand: brand, price: price);

  @override
  void details(){
    super.details();
    print('Model: $model');
  }
}
