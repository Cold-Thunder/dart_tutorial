import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:flutter/material.dart';

class TopGreyCard extends StatelessWidget {
  const TopGreyCard({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: 321,
      width: width,
        decoration: BoxDecoration(
          color: AllColors.shapeGrey,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(32),
            bottomRight: Radius.circular(32),
          ),
          // image: DecorationImage(
          //   image: AssetImage(-),
          //   fit: BoxFit.fill
          // )
        )
    );
  }
}
