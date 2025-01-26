import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app_ui/config/utiles/all_colors.dart';
import 'package:grocery_app_ui/config/utiles/all_images.dart';
import 'package:grocery_app_ui/config/utiles/routes_helper.dart';
import 'package:grocery_app_ui/ui/widgets/search_bar_widget.dart';

class SearchSection extends StatelessWidget {
  final TextEditingController controller;
  const SearchSection({required this.controller, super.key});

  searchBarOnTapFunc(BuildContext context){
    Navigator.pushNamed(context, RoutesHelper.searchScreen);
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width,
      height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SearchBarWidget(controller: controller, barWidth: width*0.733, onTapFunction: searchBarOnTapFunc,),
            InkWell(
              onTap: (){},
              splashColor: AllColors.transparent,
              highlightColor: AllColors.transparent,
              child: Container(
                padding: const EdgeInsets.all(13),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AllColors.mainGreen
                ),
                child: SvgPicture.asset(AllImages.filterSvg, height: 24, width: 24)
              ),
            )
          ],
        )
    );
  }
}
