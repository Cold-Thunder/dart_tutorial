
import 'package:assignment7_ui/ui/screens/log_in_screen/login_screen.dart';
import 'package:assignment7_ui/ui/screens/onboarding_screens/onboarding1.dart';
import 'package:assignment7_ui/ui/screens/onboarding_screens/onboarding2.dart';
import 'package:assignment7_ui/ui/screens/onboarding_screens/onboarding3.dart';
import 'package:assignment7_ui/ui/screens/onboarding_screens/onboarding4.dart';
import 'package:assignment7_ui/config/utiles/texts/on_boarding_texts.dart';
import 'package:assignment7_ui/ui/widgets/elevated_button_design.dart';
import 'package:assignment7_ui/ui/widgets/skip_button.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {

  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();

  int ind= 0;

  screenControlling(){
    _controller.nextPage(duration: Duration(seconds: 1), curve: Curves.easeIn);
  }

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
                    screen: ind == 3 ? LoginScreen() : null,
                    function: ind < 3 ? screenControlling : null,
                  ),
                ),
                ind < 3 ? SkipButton(screen: LoginScreen()) : SizedBox(height: 50),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
