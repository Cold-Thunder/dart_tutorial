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
      child: SizedBox(
        // margin: const EdgeInsets.only(right: 15),
        height: 172,
        width: 153,
        child: Stack(alignment: Alignment.center, children: [
          Positioned(
            bottom: 0,
            child: Container(
                padding: const EdgeInsets.only(
                    left: 12, right: 12, top: 56, bottom: 10),
                height: 130,
                width: 153,
                decoration: BoxDecoration(
                    color: AllColors.appbarWhite,
                    borderRadius: BorderRadius.circular(24),
                    boxShadow: [
                      BoxShadow(
                        color: AllColors.popItemShadowColor,
                        offset: Offset(12, 12),
                        blurRadius: 30,
                      )
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // title
                    Text(model.title,
                        style: TextStyles.categoryHeadingStyle
                            .copyWith(fontSize: 15)),
                    // subtitle
                    Text(
                      model.subTitle,
                      style: TextStyles.onboardDesStyle.copyWith(fontSize: 13),
                    ),
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
                                  builder: (context) => EditCartScreen()),
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
                        )
                      ],
                    )
                  ],
                )),
          ),
          // top grey box
          Positioned(
            top: 0,
            child: GreyCard(
              height: 84,
              width: 122,
              borderRad: 15,
            ),
          ),
        ]),
      ),
    );
  }
}
