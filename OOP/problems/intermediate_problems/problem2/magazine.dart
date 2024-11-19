import 'libraryItem.dart';

class Magazine extends LibraryItem{
  late String _issueNumber;

  Magazine({required String title, required String author, required String issueNumber}):
      _issueNumber = issueNumber, super(title: title, author: author);

  @override
  void showDetails(){
    super.showDetails();
    print('Issue Number: $_issueNumber');
  }
}