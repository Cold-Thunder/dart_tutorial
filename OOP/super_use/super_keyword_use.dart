void main(){
  MacBook macBook1 = MacBook('Macbook', '1400', '16');
  macBook1.showInfo();
}

class Laptop{
  final String brand;
  final String price;

  Laptop(this.brand, this.price);

  void showInfo(){
    print('Brand: $brand, price: $price');
  }
}

class MacBook extends Laptop{
  final String model;
  // sub class constructor
  MacBook(String brand, String price, this.model): super(brand, price); //calling super class constructor

  /// overriding method.
  /// which is created in parent class
  @override
  void showInfo(){
    super.showInfo();
    print('Model:$model');
  }
}