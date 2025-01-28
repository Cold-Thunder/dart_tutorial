
import 'package:assignment7_ui/config/utiles/texts/all_texts.dart';
import 'package:assignment7_ui/ui/screens/log_in_screen/login_screen.dart';
import 'package:assignment7_ui/ui/screens/onboarding_screens/onboarding1.dart';
import 'package:assignment7_ui/ui/screens/onboarding_screens/onboarding2.dart';
import 'package:assignment7_ui/ui/screens/onboarding_screens/onboarding3.dart';
import 'package:assignment7_ui/ui/screens/onboarding_screens/onboarding4.dart';
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
        body: SizedBox(
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: height > 350? height*0.763 : height*0.63,
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
                  title: ind < 3 ? AllTexts.next : AllTexts.getStarted,
                  screen: ind == 3 ? LoginScreen() : null,
                  function: ind < 3 ? screenControlling : null,
                  height: height <600 ? height*0.076 : 62
                ),
              ),
              const SizedBox(height: 10),
              ind < 3 ? SkipButton(screen: LoginScreen()) : SizedBox(height: height > 380 ? 50 : height*0.03),

            ],
          ),
        ),
      ),
    );
  }
}
