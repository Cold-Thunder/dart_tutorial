import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/all_images.dart';
import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/config/utiles/all_texts.dart';
import 'package:flutter/material.dart';

class LogoSection extends StatelessWidget {
  const LogoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: 10,
      children: [
        SizedBox(
          child: Image.asset(AllImages.restLogo, height: 21, width: 21),
        ),
        Text(
          AllTexts.roseGarden,
          style: TextStyles.appBarTitleStyle.copyWith(fontSize: 14),
        ),
      ],
    );
  }
}
