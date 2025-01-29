import 'package:assignment7_ui/config/utiles/all_images.dart';
import 'package:assignment7_ui/config/utiles/all_texts.dart';
import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/ui/widgets/grey_card.dart';
import 'package:assignment7_ui/ui/widgets/tracker_widget.dart';
import 'package:flutter/material.dart';

class Onboarding4 extends StatelessWidget {
  Onboarding4({super.key});

  final List<Color> trackerColor = [
    AllColors.brightOrange,
    AllColors.brightOrange,
    AllColors.brightOrange,
    AllColors.buttonOrange,
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: width,
          height: height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GreyCard(height: height*0.359, width: 240, image: AllImages.onboardingOne),
              Visibility(
                visible: height > 350,
                child: SizedBox(height: height*0.086),
              ),
              ///heading section
              Text(AllTexts.freeDelivery,
                  style: TextStyles.onboardHeadStyle),
              Visibility(
                  visible: height > 350,
                  child: SizedBox(height: 10)
              ),
              // des section
              Container(
                // width: width*0.8,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                alignment: Alignment.center,
                child: Text(
                  AllTexts.favDes,
                  style: TextStyles.onboardDesStyle,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: height > 350 ? height*0.043 : height*0.0215),
              // tracker
              TrackerWidget(trackerColor: trackerColor),

            ],
          ),
        ),
      ),
    );
  }
}
