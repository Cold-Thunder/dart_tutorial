import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app_ui/config/models/product_model.dart';
import 'package:grocery_app_ui/config/utiles/all_colors.dart';
import 'package:grocery_app_ui/config/utiles/all_images.dart';
import 'package:grocery_app_ui/config/utiles/all_texts.dart';
import 'package:grocery_app_ui/config/utiles/styles/all_text_styles.dart';

class BottomCountBar extends StatelessWidget {
  final List<ProductModel> items;
  final double totalPrice;

  const BottomCountBar({required this.items, required this.totalPrice,  super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      padding: const EdgeInsets.all(10),
      width: width,
      height: 64,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: AllColors.mainGreen),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 45,
            width: 61,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AllColors.deepLightGreen,
            ),
            child: Container(
                margin: const EdgeInsets.only(left: 16),
              padding: const EdgeInsets.all(5),
              width: 45,
              height: 54,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AllColors.white
              ),
              child: Image.asset(items[0].image, height: 50, width: 40)
            )
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${items.length} Item',
                style: AllTextStyles.productSize.copyWith(
                  color: AllColors.white,
                ),
              ),
              Text(
                '\$$totalPrice',
                style: AllTextStyles.onboardHeadingStyle
                    .copyWith(fontSize: 16, color: AllColors.white),
              ),
            ],
          ),
          Spacer(),
          InkWell(
            splashColor: AllColors.transparent,
            highlightColor: AllColors.transparent,
            onTap: (){},
            child: Row(
              children: [
                Text(
                  AllTexts.viewCart,
                  style: AllTextStyles.productSize.copyWith(
                    fontSize: 16,
                    color: AllColors.white
                  )
                ),
                const SizedBox(width: 12),
                SvgPicture.asset(AllImages.rightArrow, width: 18, height: 14)
              ],
            ),
          )
        ],
      ),
    );
  }
}
