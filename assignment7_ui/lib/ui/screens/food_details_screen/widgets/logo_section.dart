import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/all_images.dart';
import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/config/utiles/all_texts.dart';
import 'package:flutter/material.dart';

class LogoSection extends StatelessWidget {
  const LogoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      height: 47,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: AllColors.restNameBorderGrey,
            width: 1,
          )),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 13,
        children: [
          SizedBox(
            child: Image.asset(AllImages.restLogo, height: 21, width: 21),
          ),
          Text(
            AllTexts.restName,
            style: TextStyles.appBarTitleStyle.copyWith(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
