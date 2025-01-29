import 'package:assignment7_ui/config/models/resturant_model.dart';
import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/images/all_images.dart';
import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/config/utiles/texts/all_texts.dart';
import 'package:assignment7_ui/ui/screens/resturant_view_one/resturant_view_one_screen.dart';
import 'package:assignment7_ui/ui/widgets/grey_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OpenRestCard extends StatelessWidget {
  final RestaurantModel model;
  const OpenRestCard({required this.model, super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RestaurantViewOneScreen(model: model),
          ),
        );
      },
      splashColor: AllColors.transparent,
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        height: 232,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GreyCard(height: 137, width: width, image: model.image,),
            const SizedBox(height: 10),
            Text(
              model.name,
              style: TextStyles.headingTextStyle
                  .copyWith(color: AllColors.cartBlack),
            ),
            // items
            SizedBox(
              height: 20,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: model.items?.length ?? 0,
                itemBuilder: (context, index){
                  return Text(index < model.items!.length - 1 ? "${model.items![index]} - " : model.items![index], style: TextStyles.hintTextStyle);
                }
              ),
            ),
            const SizedBox(height: 10),
            Row(
              spacing: 20,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(AllImages.starIcon, height: 20, width: 20),
                    const SizedBox(width: 5),
                    Text(
                      model.rating.toString(),
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
                      model.deliveryType ?? AllTexts.deliveryType,
                      style: TextStyles.hintTextStyle
                          .copyWith(color: AllColors.cartBlack),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SvgPicture.asset(AllImages.clockIcon,
                        height: 20, width: 20),
                    const SizedBox(width: 5),
                    Text(
                      model.time.toString(),
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
