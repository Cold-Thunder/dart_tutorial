/// Named constructor:
/// it will ensure that the user provide a value for a specific field.
///

void main() {
  Toyota toyota1 = Toyota(brand: 'Toyota', price: 1221313, model: 'adjaldj');

  toyota1.showDetails();
}

class Car {
  final String brand;
  final double price;
  // Car({named parameters})
  Car({required this.brand, required this.price});

  void showDetails() {
    print('Brand: $brand, price: $price');
  }
}

class Toyota extends Car {
  final String brand;
  final String model;
  final double price;
  Toyota({required this.brand, required this.price, required this.model})
      : super(brand: brand, price: price);

  @override
  void showDetails(){
    super.showDetails();
    print('Model: $model');
  }
}
