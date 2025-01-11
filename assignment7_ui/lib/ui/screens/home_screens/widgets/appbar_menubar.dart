import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/images/all_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppbarManubar extends StatelessWidget {
  const AppbarManubar({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: AllColors.transparent,
      onTap: (){
        Scaffold.of(context).openDrawer();
      },
        radius: 22,
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(left: 15),
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          color: AllColors.menuGrey,
          shape: BoxShape.circle
        ),
        child: SvgPicture.asset(AllImages.menuIcon, height: 12, width: 16),
      )
    );
  }
}
