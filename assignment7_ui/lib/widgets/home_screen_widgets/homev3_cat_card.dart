import 'package:assignment7_ui/models/home_v2_cat_model.dart';
import 'package:assignment7_ui/utiles/all_colors.dart';
import 'package:assignment7_ui/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/widgets/grey_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeV3CatCard extends StatelessWidget{
  final HomeV2CatModel model;
  const HomeV3CatCard({required this.model, super.key});

  @override
  Widget build(BuildContext context){
    return InkWell(
      onTap: (){

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
                    offset: Offset(0,5),
                    color: AllColors.shadowColor,
                    spreadRadius: 5,
                    blurRadius: 3
                  ),
                ],
              ),
              child: GreyCard(height: 81, width: 96),
            ),
            Spacer(),
            Text(
              model.title,
              style: TextStyles.categoryHeadingStyle,
              textAlign: TextAlign.center,
            )
          ],
        )
      ),
    );
  }
}