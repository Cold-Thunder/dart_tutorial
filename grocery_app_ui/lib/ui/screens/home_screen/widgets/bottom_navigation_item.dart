import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_app_ui/config/models/bottom_nev_item_model.dart';

class BottomNavigationItem extends StatelessWidget {
 final BottomNevItemModel model;
 final int clickedInd;
  final Function func;

  const BottomNavigationItem({required this.model, required this.func, required this.clickedInd, super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final double height = 70;
    return InkWell(
        onTap: (){
          func(model.index);
        },
        child: Container(
            alignment: Alignment.center,
            height: height,
            width: width/4,
            child: Stack(
              alignment: Alignment.center,
              children: [
                SvgPicture.asset(model.index == clickedInd ? model.selectedIcon : model.icon, height: 24, width: 24)
              ],
            )
        )
    );
  }
}
