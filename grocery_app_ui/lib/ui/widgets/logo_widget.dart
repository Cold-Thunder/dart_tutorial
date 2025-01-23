import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app_ui/config/utiles/all_images.dart';

class LogoWidget extends StatelessWidget {
  final double height;
  final double width;

  const LogoWidget({required this.height, required this.width, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 20, bottom: 15),
        height:height,
        width: width,
        child: SvgPicture.asset(AllImages.logoSvg, height: height, width: width)
    );
  }
}
