class LibraryItem{
  late String _title;
  late String _author;

  LibraryItem({required String title, required String author}):
      _title = title, _author = author;

  String get title => _title;
  String get author => _author;

  void showDetails(){
    print('Title: $_title');
    print('Author: $_author');
  }
}