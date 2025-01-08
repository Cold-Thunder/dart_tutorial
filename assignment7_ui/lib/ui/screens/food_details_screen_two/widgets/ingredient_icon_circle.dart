import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IngredientIconCircle extends StatelessWidget {
  final String iconSvg;
  const IngredientIconCircle({required this.iconSvg, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50, width: 50,
      decoration:BoxDecoration(
        shape: BoxShape.circle,
        color: AllColors.ingredientOrange,
      ),
      child: SvgPicture.asset(iconSvg, height: 24, width: 24)
    );
  }
}
