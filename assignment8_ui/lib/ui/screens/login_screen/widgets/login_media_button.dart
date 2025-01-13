import 'package:assignment8_ui/config/all_colors.dart';
import 'package:assignment8_ui/config/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginMediaButton extends StatelessWidget {
  final String imageSvg;
  final String title;
  final Function? func;
  const LoginMediaButton({required this.imageSvg, required this.title, this.func, super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 60,
      width: width,
      child: OutlinedButton(
        onPressed: () {
          if(func != null){
            func;
          }
        },
        style: OutlinedButton.styleFrom(
            // foregroundColor: AllColors.mainGreen,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            side: BorderSide(width: 1, color: AllColors.borderOutlineGrey)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            SvgPicture.asset(imageSvg, height: 20, width: 20),
            Text(
              title,
              style: TextStyles.smallHeadingTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
