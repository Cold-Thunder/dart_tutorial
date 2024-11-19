import 'libraryItem.dart';

class Book extends LibraryItem{
  late String _isbn;

  Book({required String title, required String author, required String isbn}):
      _isbn = isbn , super(title: title, author: author);

  @override
  void showDetails(){
    super.showDetails();
    print('ISBN: $_isbn');
  }
}