import 'package:flutter/material.dart';
import 'package:widgets_use/config/utiles/styles/all_colors.dart';

class PositionedIconBox extends StatelessWidget {
  final IconData iconData;
  const PositionedIconBox({required this.iconData, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
          color: AllColors.swedenBlue, shape: BoxShape.circle),
      child: Icon(iconData, size: 25, color: AllColors.white)
    );
  }
}
