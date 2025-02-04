import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app_ui/core/utiles/all_colors.dart';
import 'package:grocery_app_ui/core/utiles/all_images.dart';
import 'package:grocery_app_ui/core/utiles/all_texts.dart';
import 'package:grocery_app_ui/core/utiles/styles/all_text_styles.dart';

class PayButtonSection extends StatelessWidget {
  final double price;

  const PayButtonSection({required this.price, super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      width: size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // top section
              Row(
                spacing: 5,
                children: [
                  Text(
                    AllTexts.payUsing,
                    style: AllTextStyles.productSize.copyWith(fontSize: 16),
                  ),
                  InkWell(
                      onTap: () {},
                      child: Transform.rotate(
                        angle: 3.1416,
                        child: SizedBox(
                            width: 18,
                            child: SvgPicture.asset(AllImages.arrowDownSvg,
                                width: 18)),
                      ))
                ],
              ),
              // payment type
              Text(AllTexts.paymentType,
                  style: AllTextStyles.searchScreenHeading)
            ],
          ),
          // right green button section
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 13),
            height: 56,
            width: size.width * 0.56,
            decoration: BoxDecoration(
                color: AllColors.mainGreen,
                borderRadius: BorderRadius.circular(12)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '\$$price',
                  style: AllTextStyles.searchScreenHeading
                      .copyWith(color: AllColors.white),
                ),
                VerticalDivider(
                  width: 2,
                  color: AllColors.white
                ),
                Row(
                  spacing: 5,
                  children: [
                    Text(
                      AllTexts.placeOrder,
                      style: AllTextStyles.socialLogBtnStyle.copyWith(
                        color: AllColors.white
                      )
                    ),
                    SizedBox(
                      height: 14,
                      width: 19,
                      child: SvgPicture.asset(AllImages.rightArrow, height: 14, width: 19)
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
