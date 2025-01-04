
import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:flutter/material.dart';

class GreyCard extends StatelessWidget{
  final double height;
  final double width;
  final double? borderRad;
  final Color? color;
  // final String image;

  const GreyCard({required this.height, required this.width, this.borderRad, this.color, super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color ?? AllColors.shapeGrey,
        borderRadius: BorderRadius.circular(borderRad ?? 12),
        // image: DecorationImage(
        //   image: AssetImage(-),
        //   fit: BoxFit.fill
        // )
      )
    );
  }
}