import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app_ui/core/utiles/all_colors.dart';
import 'package:grocery_app_ui/core/utiles/all_images.dart';
import 'package:grocery_app_ui/core/utiles/all_texts.dart';
import 'package:grocery_app_ui/core/utiles/styles/all_text_styles.dart';

class AddressSection extends StatelessWidget {
  const AddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      width: width,
      child: Row(
        spacing: 10,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AllColors.lightGreen),
            child:
                SvgPicture.asset(AllImages.homeGreenSvg, height: 18, width: 18),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // heading section
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: AllTexts.deliveryTo,
                          style: AllTextStyles.onboardDesStyle,
                          children: [
                            TextSpan(
                              text: ' ${AllTexts.home}',
                              style: AllTextStyles.searchScreenHeading,
                            )
                          ],
                        ),
                      ),
                      InkWell(
                          onTap: () {},
                          child: Text(AllTexts.change,
                              style: AllTextStyles.skipTextStyle))
                    ]),
                Text(
                  AllTexts.homeAddress,
                  style: AllTextStyles.productSize.copyWith(fontSize: 14),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
