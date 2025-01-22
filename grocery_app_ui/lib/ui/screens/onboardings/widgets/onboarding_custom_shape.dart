import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app_ui/config/utiles/all_colors.dart';
import 'package:grocery_app_ui/config/utiles/all_images.dart';
import 'package:grocery_app_ui/config/utiles/all_texts.dart';
import 'package:grocery_app_ui/config/utiles/routes_helper.dart';
import 'package:grocery_app_ui/config/utiles/styles/all_text_styles.dart';
import 'package:grocery_app_ui/config/utiles/methods/onboard_clipper_method.dart';
import 'package:grocery_app_ui/ui/screens/onboardings/widgets/small_dot.dart';

class OnboardingCustomShape extends StatelessWidget {

  final PageController? pageController;
  final String title;
  final String des;
  final int ind;
  const OnboardingCustomShape({required this.title, required this.des, required this.ind, this.pageController, super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return ClipPath(
      clipper: ClipperMethod(),
      child: Container(
        padding: const EdgeInsets.only(left:20, right: 20, top: 45, bottom: 15),
        height: 301,
        width: width*0.9,
        color: AllColors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 15,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 5,
              children: [
                SmallDot(index: 0, givenInd: ind,),
                SmallDot(index: 1, givenInd: ind,),
                SmallDot(index: 2, givenInd: ind,),
              ],
            ),
            Container(
              alignment: Alignment.center,
              width: width*0.6,
              child: Text(
                  AllTexts.onboardOneHead,
                  style: AllTextStyles.onboardHeadingStyle,
                textAlign: TextAlign.center
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: width*0.7,
              child: Text(
                AllTexts.onboardDes,
                style: AllTextStyles.onboardDesStyle,
                textAlign: TextAlign.center
              )
            ),

            const SizedBox(height: 10),
            // next button
            InkWell(
              onTap: (){
                  pageController != null ? pageController?.nextPage(
                    duration: Duration(seconds: 1),
                    curve: Curves.linear
                  ) : Navigator.pushReplacementNamed(context, RoutesHelper.loginPage);
              },
              child: Container(
                padding: const EdgeInsets.all(17),
                height: 56,
                width: 56,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AllColors.mainGreen
                ),
                child:SvgPicture.asset(AllImages.forwardLargeSvg, height: 24, width: 24)
              ),
            )
          ],
        ),
      ),
    );
  }
}
