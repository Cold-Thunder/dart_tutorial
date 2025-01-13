class ChatUsersModel{
  final String image;
  final String name;
  final String message;
  final String time;
  final int msgCount;
  final bool active;

  ChatUsersModel({
    required this.image,
    required this.name,
    required this.message,
    required this.time,
    required this.msgCount,
    required this.active
  });
}