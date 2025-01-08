import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:flutter/material.dart';

class OfferCard extends StatelessWidget {
  final String title;

  const OfferCard({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10,top: 10),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      height: 46,
      decoration: BoxDecoration(
        color: AllColors.appbarWhite,
        borderRadius: BorderRadius.circular(33),
        border: Border.all(
          width: 2,
          color: AllColors.keyboxBorderGrey
        )
      ),
      child: Text(title, style: TextStyles.onboardDesStyle.copyWith(
        color: AllColors.smallVisaGrey
      ))
    );
  }
}
