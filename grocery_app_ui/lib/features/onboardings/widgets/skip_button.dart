import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/utiles/all_colors.dart';
import '../../../core/utiles/all_images.dart';
import '../../../core/utiles/all_texts.dart';
import '../../../core/utiles/routes_helper.dart';
import '../../../core/utiles/styles/all_text_styles.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushReplacementNamed(context, RoutesHelper.loginPage);
      },
      child: Container(
        padding: const EdgeInsets.only(right: 15),
        alignment: Alignment.centerRight,
        height: 32,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          spacing: 5,
          children: [
            Text(
                AllTexts.skip,
                style: AllTextStyles.skipTextStyle
            ),
            Container(
              padding: const EdgeInsets.all(8),
              height: 32,
              width: 32,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AllColors.mainGreen
              ),
              child: SvgPicture.asset(AllImages.forwardRightSvg, height: 16, width: 16),
            )
          ],
        ),
      ),
    );
  }
}
