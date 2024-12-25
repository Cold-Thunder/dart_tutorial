import 'package:assignment7_ui/models/home_v2_cat_model.dart';
import 'package:assignment7_ui/utiles/all_colors.dart';
import 'package:assignment7_ui/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/utiles/texts/home_screen_texts.dart';
import 'package:assignment7_ui/widgets/grey_card.dart';
import 'package:flutter/material.dart';

class HomeV2CateCard extends StatelessWidget {
  final HomeV2CatModel model;

  const HomeV2CateCard({required this.model, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(14),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
        height: 172,
        width: 147,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: AllColors.appbarWhite,
          boxShadow: [
            BoxShadow(
              offset: Offset(0,3),
              color: AllColors.shadowColor,
              spreadRadius: 10,
              blurRadius: 6
            ),
            // BoxShadow(
            //     offset: Offset(0, -3),
            //     color: AllColors.appbarWhite,
            //     spreadRadius: 3,
            //     blurRadius: 3
            // )
          ]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GreyCard(height: 104, width: 147),
            const SizedBox(height: 10),
            Text(HomeScreenText.pizza, style: TextStyles.categoryHeadingStyle),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    HomeScreenText.starting,
                    style: TextStyles.hintTextStyle
                        .copyWith(color: AllColors.desBlack),
                  ),
                  Text(
                    HomeScreenText.price,
                    style: TextStyles.hintTextStyle.copyWith(
                      color: AllColors.headingBlack
                    )
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
