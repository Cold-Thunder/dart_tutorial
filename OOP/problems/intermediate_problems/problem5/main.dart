// Problem 5: Online Store
// Scenario:
// Design a system for an online store:
//
// Create a base class Product with private fields name and price.
// Create subclasses Electronics and Clothing:
// Electronics should have a private field warrantyPeriod and a method showElectronicsDetails() that prints the name, price, and warranty period.
// Clothing should have a private field size and a method showClothingDetails() that prints the name, price, and size.
// Problem Requirements:
//
// Use encapsulation for all fields.
// Create a function displayProductDetails(Product product):
// Upcast instances of Electronics and Clothing to Product.
// Use downcasting to call showElectronicsDetails or showClothingDetails.
// Create a list of Product objects (a mix of Electronics and Clothing) and display their details using the displayProductDetails function.
import 'clothes.dart';
import 'electronics.dart';
import 'product.dart';

void main(){
  displayProductDetails(Electronics(name: 'MSI Laptop', price: 2000, warrantyPeriod: '2 year'));
  displayProductDetails(Clothe(name: 'huddy', price: 10, size: 'L'));
}

void displayProductDetails(Product product){
  if(product is Electronics){
    product.showElectronicsDetails();
  }else if(product is Clothe){
    product.showClothingDetails();
  }else{
    print('Give valid products');
  }
}