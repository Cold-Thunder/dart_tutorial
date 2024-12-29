import 'package:assignment7_ui/screens/home_v1.dart';
import 'package:assignment7_ui/screens/onboarding1.dart';
import 'package:assignment7_ui/screens/onboarding2.dart';
import 'package:assignment7_ui/screens/onboarding3.dart';
import 'package:assignment7_ui/screens/onboarding4.dart';
import 'package:assignment7_ui/utiles/texts/on_boarding_texts.dart';
import 'package:assignment7_ui/widgets/elevated_button_design.dart';
import 'package:assignment7_ui/widgets/skip_button.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {

  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();

  int ind= 0;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            width: width,
            height: height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 620,
                  child: PageView(
                    controller: _controller,
                    onPageChanged: (index){
                      setState((){
                        ind = index;
                      });
                    },
                    children: [
                      Onboarding1(),
                      Onboarding2(),
                      Onboarding3(),
                      Onboarding4(),
                    ],
                  ),
                ),
                // const SizedBox(height: 0),
                SizedBox(
                  width: width * 0.9,
                  child: ElevatedButtonDesign(
                    title: ind < 3 ? OnBoardingTexts.next : OnBoardingTexts.getStarted,
                    screen: ind == 3 ? HomeV1() : null,
                  ),
                ),
                ind < 3 ? SkipButton(screen: _controller) : SizedBox(height: 50),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
