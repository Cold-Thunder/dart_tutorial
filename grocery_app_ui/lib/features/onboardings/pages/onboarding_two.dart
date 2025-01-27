import 'package:flutter/material.dart';

import '../../../core/utiles/all_colors.dart';
import '../../../core/utiles/all_images.dart';
import '../../../core/utiles/all_texts.dart';
import '../widgets/onboarding_custom_shape.dart';
import '../widgets/skip_button.dart';

class OnboardingTwo extends StatelessWidget {
  final PageController pageController;
  const OnboardingTwo({required this.pageController, super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.only(top: 40),
      width: width,
      height: height,
      color: AllColors.transGreen,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SkipButton(),
          SizedBox(
            height: height -72,
            child: Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  top: -20,
                  child: SizedBox(
                    height: height*0.66,
                    width: width*0.872,
                    child: Image.asset(AllImages.person,
                        height: height*0.66, width: width*0.872),
                  ),
                ),
                Positioned(
                  top: height*0.50,
                  child: OnboardingCustomShape(
                    pageController: pageController,
                    title: AllTexts.onboardTwoHead,
                    des: AllTexts.onboardDes,
                    ind: 1,),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
