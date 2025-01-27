import 'package:flutter/material.dart';
import '../../../core/components/elevated_button_design.dart';
import '../../../core/utiles/all_colors.dart';
import '../../../core/utiles/all_images.dart';
import '../../../core/utiles/all_texts.dart';
import '../../../core/utiles/styles/all_text_styles.dart';

class BannerAd extends StatelessWidget {
  const BannerAd({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = width < 768 ? width*0.472 : 768*0.472;
    return Container(
      height: height,
      width: width < 768 ? width : 768,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AllColors.bannerBackGreen,
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
            height: height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AllTexts.adTitle,
                  style: AllTextStyles.onboardHeadingStyle.copyWith(
                    fontSize: width < 350 ? 14 :18
                  )
                ),
                ElevatedButtonDesign(title: AllTexts.shopNow, givenWidth: width*0.28, givenHeight: width < 360 ? 25 : 40,)
              ]
            ),
          )
        ],
      )
    );
  }
}
