
import 'package:assignment7_ui/utiles/all_colors.dart';
import 'package:flutter/material.dart';

class GreyCard extends StatelessWidget{
  final double height;
  final double width;
  // final String image;

  const GreyCard({required this.height, required this.width, super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: AllColors.shapeGrey,
        borderRadius: BorderRadius.circular(12),
        // image: DecorationImage(
        //   image: AssetImage(-),
        //   fit: BoxFit.fill
        // )
      )
    );
  }
}