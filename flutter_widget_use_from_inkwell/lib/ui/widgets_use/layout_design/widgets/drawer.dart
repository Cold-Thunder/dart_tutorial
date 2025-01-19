import 'package:flutter/material.dart';
import 'package:widgets_use/config/utiles/styles/all_colors.dart';


class DrawerDesign extends StatelessWidget {
  const DrawerDesign({super.key});

  @override
  Widget build(BuildContext context) {
      final height = MediaQuery.of(context).size.height;
      final width = MediaQuery.of(context).size.width;
    return Container(
        height: 500,
        width: width*0.5,
        color: AllColors.gerRed
    );
  }
}

