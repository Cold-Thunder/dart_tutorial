import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconButtons extends StatelessWidget {
  final String iconSvg;
  final Function? iconFunc;
  final Color? color;
  const IconButtons({required this.iconSvg, this.iconFunc, this.color, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){

      },
      child: Container(
        padding: const EdgeInsets.all(14),
        height: 46,
        width: 46,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color ?? AllColors.black
        ),
        child: SvgPicture.asset(iconSvg, height: 15, width: 15)
      )
    );
  }
}
