class RestaurantModel{
  final String? image;
  final String name;
  final List<String>? items;
  final String rating;
  final String? deliveryType;
  final int? time;

  RestaurantModel({
    this.image, required this.name, this.items, required this.rating, this.deliveryType,
    this.time
});
}