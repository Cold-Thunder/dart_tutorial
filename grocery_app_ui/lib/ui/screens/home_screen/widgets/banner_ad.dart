import 'package:flutter/material.dart';
import 'package:grocery_app_ui/config/utiles/all_colors.dart';
import 'package:grocery_app_ui/config/utiles/all_images.dart';
import 'package:grocery_app_ui/config/utiles/all_texts.dart';
import 'package:grocery_app_ui/config/utiles/styles/all_text_styles.dart';
import 'package:grocery_app_ui/ui/widgets/elevated_button_design.dart';

class BannerAd extends StatelessWidget {
  const BannerAd({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = width*0.472;
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AllColors.bannerBackGreen
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: -3,
            right:15,
            child: SizedBox(
              height: height*0.87,
              child: Image.asset(
                AllImages.adBannerImg,
                height: height*0.87
              )
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16),
            width: width*0.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AllTexts.adTitle,
                  style: AllTextStyles.onboardHeadingStyle.copyWith(
                    fontSize: 18
                  )
                ),
                ElevatedButtonDesign(title: AllTexts.shopNow, givenWidth: width*0.28, givenHeight: 40,)
              ]
            ),
          )
        ],
      )
    );
  }
}
