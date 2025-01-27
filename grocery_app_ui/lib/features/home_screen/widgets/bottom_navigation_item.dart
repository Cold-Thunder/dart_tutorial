import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/models/bottom_nev_item_model.dart';
import 'navbar_item_indicator.dart';

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
                Visibility(
                  visible: clickedInd == model.index,
                  child: Positioned(
                    top: 0,
                      child: NavbarItemIndicator(),
                  ),
                ),
                SizedBox(
                    height: height,
                    child: SvgPicture.asset(model.index == clickedInd ? model.selectedIcon : model.icon, height: 24, width: 24),
                )
              ],
            )
        )
    );
  }
}
