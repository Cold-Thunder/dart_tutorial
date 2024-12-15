class BottomItemDataModule{
  final String _image;
  final String _title;
  final String _subtitle;
  final String _time;
  final int _mesCount;

  BottomItemDataModule({
    required String image,
    required String title,
    required String subtitle,
    required String time,
    required int mesCount
  }):
  _image = image,
  _title = title,
  _subtitle = subtitle,
  _time = time,
  _mesCount = mesCount;

  String get image => _image;
  String get title => _title;
  String get subTitle => _subtitle;
  String get time => _time;
  int get mesCount => _mesCount;
}