import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app_ui/config/utiles/all_colors.dart';
import 'package:grocery_app_ui/config/utiles/styles/all_text_styles.dart';

class SocialMediaLogButton extends StatelessWidget {
  final String title;
  final String iconSvg;
  const SocialMediaLogButton({required this.title, required this.iconSvg,super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: OutlinedButton(
          onPressed: (){},
          style: OutlinedButton.styleFrom(
            backgroundColor: AllColors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            side: BorderSide(
              width: 1,
              color: AllColors.inputOutlineGrey
            )
          ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              height: 62,
              width: 50,
                child: SvgPicture.asset(iconSvg, height: 40, width: 40),
            ),
            Text(title, style: AllTextStyles.socialLogBtnStyle)
          ],
        )
      ),
    );
  }
}
