import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:flutter/cupertino.dart';

class OrderCardTopSection extends StatelessWidget{
  final String title;
  final String id;

  const OrderCardTopSection({required this.title, required this.id, super.key});

  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyles.profileNameStyle.copyWith(fontSize: 14)
        ),
        // Spacer(),
        Text(
            id,
            style: TextStyles.orderIdStyle
        ),
      ],
    );
  }
}