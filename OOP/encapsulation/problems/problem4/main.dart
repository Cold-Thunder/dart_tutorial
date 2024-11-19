// Product Inventory System
// Scenario:
// Design a class Product for a product inventory system with the following specifications:
//
// The product price should be private.
// Implement a method to update the price, but only allow the price to be updated if the new price is greater than the current price.
// Implement a method to get the current price.
// Create a method to display product details including the name and price.
// Problem Requirements:
//
// The price field should be private and can only be updated via a method.
// The method should prevent the price from being set to a value lower than the current price.
// The product name should be accessible from outside the class but should not be modified directly.

import 'product.dart';

void main(){
  Product product1 = Product(name: 'Beef', price: 750);

  print(product1.name);
  product1.productPrice();
  product1.details();
}