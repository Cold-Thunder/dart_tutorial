import 'package:flutter/material.dart';
import 'package:grocery_app_ui/config/utiles/all_colors.dart';
import 'package:grocery_app_ui/config/utiles/all_images.dart';
import 'package:grocery_app_ui/config/utiles/all_texts.dart';
import 'package:grocery_app_ui/ui/screens/onboardings/widgets/onboarding_custom_shape.dart';
import 'package:grocery_app_ui/ui/screens/onboardings/widgets/skip_button.dart';

class OnboardingOne extends StatelessWidget {
  final PageController pageController;
  const OnboardingOne({required this.pageController, super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.only(top: 40),
        width: width,
        color: AllColors.transGreen,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SkipButton(),
            SizedBox(
              height: 812,
              child: Stack(
                alignment: Alignment.center,
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: -30,
                    child: SizedBox(
                      height: 558,
                      width: 327,
                      child: Image.asset(AllImages.person,
                          height: 558, width: 327),
                    ),
                  ),
                  Positioned(
                      top: 400,
                      child: OnboardingCustomShape(
                        pageController: pageController,
                        title: AllTexts.onboardOneHead,
                        des: AllTexts.onboardDes,
                        ind: 0,
                      ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
