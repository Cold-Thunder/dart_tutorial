import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:grocery_app_ui/config/utiles/all_colors.dart';
import 'package:grocery_app_ui/config/utiles/all_texts.dart';
import 'package:grocery_app_ui/config/utiles/styles/all_text_styles.dart';
import 'package:grocery_app_ui/ui/screens/signup_page/widgets/check_mark.dart';
import 'package:grocery_app_ui/ui/widgets/elevated_button_design.dart';

class CongratesDialog extends StatelessWidget {
  final Function goToHomeFunc;
  const CongratesDialog({required this.goToHomeFunc, super.key});

  final double radius = 20;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
      child: Center(
        child: Material(
          borderRadius: BorderRadius.circular(radius),
          child: Container(
            padding: const EdgeInsets.all(20),
            height: 404,
            width: width * 0.9,
            decoration: BoxDecoration(
                color: AllColors.white,
                borderRadius: BorderRadius.circular(radius)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CheckMark(),
                SizedBox(
                  width: width,
                  child: Text(
                    AllTexts.created,
                    style: AllTextStyles.onboardHeadingStyle,
                    textAlign: TextAlign.center
                  ),
                ),
                Text(
                  AllTexts.congratesDes,
                  style: AllTextStyles.onboardDesStyle.copyWith(
                    fontSize: 18
                  ),
                  textAlign: TextAlign.center
                ),
                ElevatedButtonDesign(title: AllTexts.gotoHome, height: 50, func: goToHomeFunc)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
