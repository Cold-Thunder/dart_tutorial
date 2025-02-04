import 'package:flutter/material.dart';
import 'package:grocery_app_ui/core/utiles/styles/all_text_styles.dart';

class PriceShowSection extends StatelessWidget {
  final double price;
  final String title;

  const PriceShowSection({required this.price, required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AllTextStyles.socialLogBtnStyle,
        ),
        Text(
          '\$${price.toString()}',
          style: AllTextStyles.socialLogBtnStyle,
        ),
      ],
    );
  }
}
