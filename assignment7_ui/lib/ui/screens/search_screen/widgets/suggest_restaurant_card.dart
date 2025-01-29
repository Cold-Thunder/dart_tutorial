import 'package:assignment7_ui/config/models/resturant_model.dart';
import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/images/all_images.dart';
import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/ui/screens/resturant_view_one/resturant_view_one_screen.dart';
import 'package:assignment7_ui/ui/widgets/grey_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SuggestRestaurantCard extends StatelessWidget {
  final RestaurantModel model;

  const SuggestRestaurantCard({required this.model, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RestaurantViewOneScreen(
              model: model,
            ),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(bottom: 10),
        margin: const EdgeInsets.symmetric(vertical: 5),
        height: 64,
        decoration: BoxDecoration(
          color: AllColors.appbarWhite,
          border: Border(
            bottom:
                BorderSide(width: 1, color: AllColors.suggestCardBorderGrey),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GreyCard(
              height: 50,
              width: 60,
              image: model.image,
            ),
            const SizedBox(width: 10),
            Column(
              spacing: 5,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  model.name,
                  style: TextStyles.inputTitleStyle.copyWith(fontSize: 16),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  spacing: 5,
                  children: [
                    SvgPicture.asset(AllImages.starIcon, height: 15, width: 15),
                    Text(
                      model.rating,
                      style: TextStyles.appBarTitleStyle.copyWith(fontSize: 16),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
