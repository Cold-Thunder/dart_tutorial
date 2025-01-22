import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app_ui/config/utiles/all_colors.dart';
import 'package:grocery_app_ui/config/utiles/all_images.dart';
import 'package:grocery_app_ui/config/utiles/all_texts.dart';
import 'package:grocery_app_ui/config/utiles/styles/text_styles.dart';
import 'package:grocery_app_ui/ui/screens/onboardings/onboarding_one.dart';
import 'package:grocery_app_ui/ui/screens/onboardings/onboarding_three.dart';
import 'package:grocery_app_ui/ui/screens/onboardings/onboarding_two.dart';
import 'package:grocery_app_ui/ui/screens/onboardings/widgets/skip_button.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AllColors.white,

      body: PageView(
        controller: _pageController,
        children: [
          OnboardingOne(pageController: _pageController,),
          OnboardingTwo(pageController: _pageController,),
          OnboardingThree()
        ],
      )
    );
  }
}
