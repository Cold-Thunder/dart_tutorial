class Member{
  late String _name;
  late String _id;

  Member({required String name, required id}):
      _name = name, _id = id;

  String get name => _name;
}