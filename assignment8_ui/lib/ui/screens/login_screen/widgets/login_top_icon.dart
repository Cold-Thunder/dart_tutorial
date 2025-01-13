import 'package:assignment8_ui/config/all_colors.dart';
import 'package:flutter/material.dart';

class LoginTopIcon extends StatelessWidget {
  const LoginTopIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 90,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AllColors.mainGreen,
      ),
      child: Icon(Icons.person, color: AllColors.appBarWhite, size: 55)
    );
  }
}
