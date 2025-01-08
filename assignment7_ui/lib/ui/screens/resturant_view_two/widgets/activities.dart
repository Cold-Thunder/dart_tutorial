import 'package:assignment7_ui/config/utiles/images/all_images.dart';
import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/config/utiles/texts/all_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Activities extends StatelessWidget {
  const Activities({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 9,
      children: [
        SvgPicture.asset(AllImages.starIcon, height: 20, width: 20),
        Text(
          AllTexts.restRating,
          style: TextStyles.profileNameStyle.copyWith(fontSize: 16),
        ),
        const SizedBox(width: 10),
        SvgPicture.asset(AllImages.vanIcon, height: 20, width: 20),
        Text(
          AllTexts.deliveryType,
          style: TextStyles.appBarTitleStyle.copyWith(fontSize: 14),
        ),
        const SizedBox(width: 10),
        SvgPicture.asset(AllImages.clockIcon, height: 20, width: 20),
        Text(
          '${AllTexts.duration} min',
          style: TextStyles.profileNameStyle.copyWith(fontSize: 14),
        ),
      ],
    );
  }
}
