// Problem 4: Library and Book System
// Description: Design a base class LibraryItem that has properties:
//
// title (string).
// author (string).
// Create a subclass called Book that inherits from LibraryItem and has additional properties:
//
// numPages (integer): Number of pages in the book.
// isbn (string): ISBN number of the book.
// Then create another subclass called Magazine that inherits from LibraryItem with properties:
//
// issueNumber (integer): Represents the issue number of the magazine.
// releaseDate (string): Represents the release date of the magazine.


void main(){
   Book book1 = Book(title: 'adhakd', author: 'hemal', numPage: 300, isnb: 'jani na');
   book1.showDetails();
}

class LibraryItem{
  final String title;
  final String author;

  LibraryItem({required this.title, required this.author});

  void showDetails(){
    print('Title: $title');
    print('Author: $author');
  }

}

class Book extends LibraryItem{
  final int numPage;
  final String isnb;

  Book({required String title, required String author,required this.numPage,required this.isnb}):
      super(title: title, author: author);


  @override
  void showDetails(){
    super.showDetails();
    print('Number of pages: $numPage');
    print('ISNB: $isnb');
  }
}

class Megazine extends LibraryItem{
  final int issueNumber;
  final String releaseDate;

  Megazine({required String title, required String author, required this.issueNumber, required this.releaseDate}):
      super(title: title, author: author);

  @override
  void showDetails(){
    super.showDetails();
    print('Issue number: $issueNumber');
    print('Release Date: $releaseDate');
  }
}