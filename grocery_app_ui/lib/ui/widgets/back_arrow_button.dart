import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app_ui/config/utiles/all_colors.dart';
import 'package:grocery_app_ui/config/utiles/all_images.dart';

class BackArrowButton extends StatelessWidget {
  const BackArrowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        splashColor: AllColors.transparent,
        highlightColor: AllColors.transparent,
        onTap: (){
          Navigator.pop(context);
        },
        child: Container(
          padding: const EdgeInsets.all(13),
          child: SvgPicture.asset(AllImages.backArrow, height: 16, width: 10),
        )
    );
  }
}
