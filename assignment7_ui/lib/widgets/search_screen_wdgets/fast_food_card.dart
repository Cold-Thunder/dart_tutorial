import 'package:assignment7_ui/models/popular_fast_food_model.dart';
import 'package:assignment7_ui/utiles/all_colors.dart';
import 'package:assignment7_ui/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/widgets/grey_card.dart';
import 'package:flutter/material.dart';

class FastFoodCard extends StatelessWidget {
  final PopularFastFoodModel model;

  const FastFoodCard({required this.model, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(right: 20, bottom: 20),
      decoration: BoxDecoration(
        color: AllColors.appbarWhite,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(24)
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 3),
            color: AllColors.shadowColor,
            blurRadius: 3,
            spreadRadius: 10
          )
        ]
      ),
      height: 144,
      width: 153,
      child: Column(
        spacing: 10,
        children: [
          GreyCard(height: 84, width: 122),
          Text(model.title, style: TextStyles.pinTextStyle),
          Text(
            model.des,
            style: TextStyles.onboardDesStyle.copyWith(fontSize: 13),
          ),
        ],
      ),
    );
  }
}
