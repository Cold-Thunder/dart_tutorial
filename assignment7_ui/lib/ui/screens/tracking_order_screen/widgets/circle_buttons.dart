import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CircleButtons extends StatelessWidget {
  final String icon;
  final Color color;
  final Widget screen;
  final bool showShadow;

  const CircleButtons({
    required this.icon,
    required this.color,
    required this.screen,
    required this.showShadow,
    super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>screen));
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 45,
          width: 45,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
            border: Border.all(
              width: 1,
              color: AllColors.buttonOrange
            ),
            boxShadow: [
              BoxShadow(
                offset: Offset(12,12),
                color: showShadow ? AllColors.transparentOrange10 : AllColors.transparent,
                blurRadius: 12
              )
            ]
          ),
        child: SvgPicture.asset(icon, height: 22, width: 22)
      )
    );
  }
}
