class ResturantModel{
  final String? image;
  final String name;
  final List<String> items;
  final String rating;
  final String deliveryType;
  final int time;

  ResturantModel({
    this.image, required this.name, required this.items, required this.rating,
    required this.deliveryType,
    required this.time
});
}