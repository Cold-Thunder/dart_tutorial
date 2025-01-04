import 'package:assignment7_ui/ui/screens/onboarding3.dart';
import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/config/utiles/texts/on_boarding_texts.dart';
import 'package:assignment7_ui/ui/widgets/elevated_button_design.dart';
import 'package:assignment7_ui/ui/widgets/grey_card.dart';
import 'package:assignment7_ui/ui/widgets/skip_button.dart';
import 'package:assignment7_ui/ui/widgets/tracker_widget.dart';
import 'package:flutter/material.dart';

class Onboarding2 extends StatelessWidget {
  Onboarding2({super.key});

  final List<Color> trackerColor = [
    AllColors.brightOrange,
    AllColors.buttonOrange,
    AllColors.brightOrange,
    AllColors.brightOrange
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
              GreyCard(height: 292, width: 240),
              const SizedBox(height: 70),
              ///heading section
              Text(OnBoardingTexts.favourite,
                  style: TextStyles.onboardHeadStyle),
              const SizedBox(height: 10),
              // des section
              Container(
                // width: width*0.8,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                alignment: Alignment.center,
                child: Text(
                  OnBoardingTexts.favDes,
                  style: TextStyles.onboardDesStyle,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 35),
              // tracker
              TrackerWidget(trackerColor: trackerColor),

            ],
          ),
        ),
      ),
    );
  }
}
