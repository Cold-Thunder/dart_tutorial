class OrderModel{
  final String id;
  final String image;
  final String title;
  final String price;
  final String date;
  final String count;
  final String foodType;
  final bool completed;
  OrderModel({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.date,
    required this.count,
    required this.foodType,
    required this.completed
  });

}