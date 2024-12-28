import 'package:assignment7_ui/utiles/all_colors.dart';
import 'package:assignment7_ui/utiles/images/all_images.dart';
import 'package:assignment7_ui/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/utiles/texts/home_screen_texts.dart';
import 'package:assignment7_ui/widgets/grey_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OpenRestCard extends StatelessWidget {
  const OpenRestCard({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: (){},
      splashColor: AllColors.transparent,
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        height: 232,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GreyCard(height: 137, width: width),
            const SizedBox(height: 10),
            Text(
              HomeScreenText.restName,
              style: TextStyles.headingTextStyle
                  .copyWith(color: AllColors.cartBlack),
            ),
            Text(HomeScreenText.items, style: TextStyles.hintTextStyle),
            const SizedBox(height: 10),
            Row(
              spacing: 20,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(AllImages.starIcon, height: 20, width: 20),
                    const SizedBox(width: 5),
                    Text(
                      HomeScreenText.rating,
                      style: TextStyles.pinTextStyle
                          .copyWith(color: AllColors.cartBlack),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SvgPicture.asset(AllImages.vanIcon, height: 20, width: 20),
                    const SizedBox(width: 5),
                    Text(
                      HomeScreenText.deliveryCost,
                      style: TextStyles.hintTextStyle
                          .copyWith(color: AllColors.cartBlack),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SvgPicture.asset(AllImages.clockIcon, height: 20, width: 20),
                    const SizedBox(width: 5),
                    Text(
                      HomeScreenText.time,
                      style: TextStyles.hintTextStyle
                          .copyWith(color: AllColors.cartBlack),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
