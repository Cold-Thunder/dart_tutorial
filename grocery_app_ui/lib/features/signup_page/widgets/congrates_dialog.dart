import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../core/components/elevated_button_design.dart';
import '../../../core/utiles/all_colors.dart';
import '../../../core/utiles/all_texts.dart';
import '../../../core/utiles/styles/all_text_styles.dart';
import 'check_mark.dart';

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
                ElevatedButtonDesign(title: AllTexts.gotoHome, givenHeight: 50, func: goToHomeFunc)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
