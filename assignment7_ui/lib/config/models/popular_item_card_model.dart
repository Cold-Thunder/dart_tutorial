
class PopularItemCardModel{
  final String? tag;
  final String? image;
  final String title;
  final String? subTitle;
  final double? price;
  final String? des;


  PopularItemCardModel({
     this.tag,
    this.image,
    required this.title,
    this.subTitle,
    this.price,
     this.des
  });
}