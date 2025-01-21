import 'package:flutter/material.dart';
import 'package:widgets_use/config/models/custom_bottom_nev_model.dart';
import 'package:widgets_use/config/utiles/styles/all_colors.dart';

class BottomNavIcon extends StatelessWidget {
  final Function func
;  final CustomBottomNevModel bottomNevModel;
  final int clickInd;
  
  const BottomNavIcon({required this.func, required this.bottomNevModel, required this.clickInd, super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return GestureDetector(
        onTapDown: (TapDownDetails details){
          func(details, bottomNevModel.index);
        },
        child: SizedBox(
          height: 60,
          width: width*0.9/5,
          child: Visibility(
            visible: bottomNevModel.index != clickInd,
            child: Icon(
                bottomNevModel.iconData,
                size: 22,
                color: AllColors.white
            ),
          ),
        )
    );
  }
}
