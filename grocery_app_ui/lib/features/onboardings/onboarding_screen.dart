import 'package:flutter/material.dart';
import 'package:grocery_app_ui/features/onboardings/pages/onboarding_one.dart';
import 'package:grocery_app_ui/features/onboardings/pages/onboarding_three.dart';
import 'package:grocery_app_ui/features/onboardings/pages/onboarding_two.dart';

import '../../core/utiles/all_colors.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
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
