import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app_ui/features/onboardings/widgets/small_dot.dart';

import '../../../core/utiles/all_colors.dart';
import '../../../core/utiles/all_images.dart';
import '../../../core/utiles/methods/onboard_clipper_method.dart';
import '../../../core/utiles/routes_helper.dart';
import '../../../core/utiles/styles/all_text_styles.dart';

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
        padding: const EdgeInsets.only(top: 45, bottom: 35),
        // height: 301,
        width: width*0.89,
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
              width: width*0.7,
              child: Text(
                  title,
                  style: AllTextStyles.onboardHeadingStyle,
                textAlign: TextAlign.center
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: width*0.8,
              child: Text(
                des,
                style: AllTextStyles.onboardDesStyle,
                textAlign: TextAlign.center
              )
            ),
            const SizedBox(height: 5),
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
