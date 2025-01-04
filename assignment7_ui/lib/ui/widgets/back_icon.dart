import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/images/all_images.dart';
import 'package:flutter/material.dart';

class BackIcon extends StatelessWidget{
  final Color? color;
  final String? iconPng;
  const BackIcon({this.color, this.iconPng, super.key});

  @override
  Widget build(BuildContext context){
    return InkWell(
      splashColor: AllColors.transparent,
      highlightColor: AllColors.transparent,
      onTap: (){
        Navigator.pop(context);
      },
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(left: 15),
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          color: color ?? AllColors.appbarWhite,
          shape: BoxShape.circle
        ),
        child: Image.asset(iconPng ?? AllImages.backImg, height: 10, width: 10)
      ),
    );
  }
}