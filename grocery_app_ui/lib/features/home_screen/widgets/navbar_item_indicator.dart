import 'package:flutter/material.dart';

import '../../../core/utiles/all_colors.dart';
import '../../../core/utiles/methods/navbar_item_indicator_clipper.dart';

class NavbarItemIndicator extends StatelessWidget {
  const NavbarItemIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: NavbarItemIndicatorClipper(),
      child: Container(
        height: 22,
        width: 24,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AllColors.mainGreen,
                AllColors.transparent40
          ]),
        )
      ),
    );
  }
}
