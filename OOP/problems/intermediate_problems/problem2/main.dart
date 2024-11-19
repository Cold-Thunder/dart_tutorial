// Problem 2: Library Management System
// Scenario:
// Create a class hierarchy for a library:
//
// Create a base class LibraryItem with private fields title and author.
// Create subclasses Book and Magazine:
// Book should have a private field isbn and a method showDetails() that prints the title, author, and ISBN.
// Magazine should have a private field issueNumber and a method showDetails() that prints the title, author, and issue number.
// Problem Requirements:
//
// Ensure all fields are private and accessible through getters/setters.
// Create a function displayItem(LibraryItem item):
// Upcast instances of Book and Magazine to LibraryItem and pass them to this function.
// Use downcasting to call the specific showDetails method of each subclass.
// Create a collection of LibraryItem objects (a mix of Book and Magazine) and display their details using the displayItem function.

import 'book.dart';
import 'libraryItem.dart';
import 'magazine.dart';

void main(){
  displayItem(Book(title: 'Nothing', author: 'Hemal', isbn: '12131313'));
}

void displayItem(LibraryItem item){
  if(item is Book){
    item.showDetails();
  }else if(item is Magazine){
    item.showDetails();
  }else{
    print('Please enter a valid item');
  }
}