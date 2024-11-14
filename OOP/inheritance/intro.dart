/// inheritance is a sharing of behaviour between two class
/// extends keyword is used for inheriting from parent class
///
///
/// types of inheritance:
/// 1. single class inheritance:
///                   a class can inherit from only one class.
///
/// 2. Multilevel inheritance:
///                   a class can inherit from another class
///                   and that class can also inherit from another class.
///
/// 3. Hierarchical Inheritance:
///                   parent class is inherited by multiple sub classes
///
/// 4. Multiple Inheritance:
///                  a class can inherit from multiple classes.
///                  but dart doesn't support multiple inheritance.


void main(){
    Toyota toyota1 =Toyota('Toyota', '12123', '1312');
    toyota1.displayInfo();
}

// parent class
class Car{
  final String brand;
  final String price;

  Car(this.brand, this.price);
  void displayInfo(){
    print('Brand: $brand, Price: $price');
  }
}

// child class
// inheriting parent class constructor with super keyword
// accessing the properties of parent class with (extends keyword)
class Toyota extends Car{
  final String model;
  Toyota(String brand, String price, this.model):super(brand, price);

  @override
  void displayInfo(){
    super.displayInfo();
    print('Model: $model');
  }
}