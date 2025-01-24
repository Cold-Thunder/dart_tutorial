import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app_ui/config/models/bottom_nev_item_model.dart';
import 'package:grocery_app_ui/config/utiles/all_colors.dart';
import 'package:grocery_app_ui/config/utiles/all_images.dart';
import 'package:grocery_app_ui/ui/screens/home_screen/widgets/bottom_navigation_item.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int clickedInd;
  final Function itemFunc;
  CustomBottomNavigationBar({required this.clickedInd, required this.itemFunc, super.key});

  final List<BottomNevItemModel> bottomNevItems = [
      BottomNevItemModel(icon: AllImages.homeIconSvg, selectedIcon: AllImages.homeGreenSvg, index: 0),
      BottomNevItemModel(icon: AllImages.heartSvg, selectedIcon: AllImages.homeGreenSvg, index: 1),
      BottomNevItemModel(icon: AllImages.cartSvg, selectedIcon: AllImages.homeGreenSvg, index: 2),
      BottomNevItemModel(icon: AllImages.profileSvg, selectedIcon: AllImages.homeGreenSvg, index: 3),
  ];


  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final double height = 70;
    return Container(
      width: width,
      height: height,
      color: AllColors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: bottomNevItems.map((item){
          return BottomNavigationItem(model: item, func: itemFunc, clickedInd: clickedInd);
        }).toList(),
      )
    );
  }
}
