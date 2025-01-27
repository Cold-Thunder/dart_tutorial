import 'package:assignment7_ui/config/models/popular_item_card_model.dart';
import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/images/all_images.dart';
import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/ui/screens/edit_cart_screen/edit_cart_screen.dart';
import 'package:assignment7_ui/ui/screens/food_details_screen/food_details_screen1.dart';
import 'package:assignment7_ui/ui/widgets/grey_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PopularItemsWidget extends StatelessWidget {
  final PopularItemCardModel model;

  const PopularItemsWidget({required this.model, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FoodDetailsScreenOne(),
          ),
        );
      },
      splashColor: AllColors.transparent,
      highlightColor: AllColors.transparent,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        height: 174,
        width: 153,
        decoration: BoxDecoration(
            color: AllColors.appbarWhite,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: AllColors.popItemShadowColor,
                offset: Offset(12, 12),
                blurRadius: 30,
              )
            ]),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          // top grey box
          GreyCard(
            height: 75,
            width: 114,
            borderRad: 15,
          ),
          const SizedBox(height: 5),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // title
              Text(
                model.title,
                style: TextStyles.categoryHeadingStyle.copyWith(fontSize: 15),
              ),
              // subtitle
              Text(
                model.subTitle,
                style: TextStyles.onboardDesStyle.copyWith(fontSize: 13),
              ),
              const SizedBox(height: 20),
              // price section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("\$${model.price.toString()}",
                      style: TextStyles.categoryHeadingStyle
                          .copyWith(fontSize: 15)),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EditCartScreen(),
                        ),
                      );
                    },
                    splashColor: AllColors.transparent,
                    highlightColor: AllColors.transparent,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AllColors.buttonOrange),
                      child: SvgPicture.asset(AllImages.whiteAddIcon,
                          height: 9.57, width: 10.81),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
