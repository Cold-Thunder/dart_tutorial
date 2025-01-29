import 'package:assignment7_ui/config/models/home_v2_cat_model.dart';
import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/ui/screens/food_business_screen/food_business_screen.dart';
import 'package:assignment7_ui/ui/widgets/grey_card.dart';
import 'package:flutter/material.dart';

class HomeV3CatCard extends StatelessWidget {
  final HomeV2CatModel model;

  const HomeV3CatCard({required this.model, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: AllColors.transparent,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FoodBusinessScreen(foodType: model.title),
          ),
        );
      },
      borderRadius: BorderRadius.circular(24),
      child: Container(
          margin: const EdgeInsets.only(bottom: 15, right: 20),
          height: 158,
          width: 122,
          color: AllColors.appbarWhite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(18),
                height: 122,
                width: 122,
                decoration: BoxDecoration(
                  color: AllColors.appbarWhite,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 5),
                        color: AllColors.shadowColor,
                        spreadRadius: 5,
                        blurRadius: 3),
                  ],
                ),
                child: GreyCard(height: 81, width: 96, image: model.image),
              ),
              Spacer(),
              Text(
                model.title,
                style: TextStyles.categoryHeadingStyle,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
              )
            ],
          )),
    );
  }
}
