import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app_ui/config/utiles/all_images.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 20, bottom: 15),
        height:60,
        width: 60,
        child: SvgPicture.asset(AllImages.logoSvg, height: 60, width: 60)
    );
  }
}
