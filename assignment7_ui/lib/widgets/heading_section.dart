import 'package:assignment7_ui/utiles/images/all_images.dart';
import 'package:assignment7_ui/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/utiles/texts/home_screen_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeadingSection extends StatelessWidget {
  final String title;
  final Widget? seeAll;

  const HeadingSection({required this.title, this.seeAll, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: TextStyles.headingTextStyle),
          InkWell(
            child: Row(
              children: [
                Text(
                  HomeScreenText.seeAll,
                  style: TextStyles.headingTextStyle.copyWith(fontSize: 16),
                ),
                const SizedBox(width: 8),
                SvgPicture.asset(AllImages.rightArrow, height: 10, width: 5)
              ],
            ),
          )
        ],
      ),
    );
  }
}
