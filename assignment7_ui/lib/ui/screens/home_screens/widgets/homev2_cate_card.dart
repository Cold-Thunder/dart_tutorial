import 'package:assignment7_ui/config/models/home_v2_cat_model.dart';
import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/config/utiles/texts/all_texts.dart';
import 'package:assignment7_ui/ui/screens/food_business_screen/food_business_screen.dart';
import 'package:assignment7_ui/ui/widgets/grey_card.dart';
import 'package:flutter/material.dart';

class HomeV2CateCard extends StatelessWidget {
  final HomeV2CatModel model;

  const HomeV2CateCard({required this.model, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
          builder: (context)=> FoodBusinessScreen(foodType: model.title,)
        ),
        );
      },
      borderRadius: BorderRadius.circular(14),
      child: Container(
        margin: const EdgeInsets.only(top: 15, bottom: 20, left: 8, right: 8,),
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
            GreyCard(height: 104, width: 147, image: model.image),
            const SizedBox(height: 10),
            Text(model.title, style: TextStyles.categoryHeadingStyle),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AllTexts.starting,
                    style: TextStyles.hintTextStyle
                        .copyWith(color: AllColors.desBlack),
                  ),
                  Text(
                    AllTexts.categoryPrice,
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
