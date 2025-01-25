
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app_ui/config/utiles/all_images.dart';
import 'package:grocery_app_ui/config/utiles/routes_helper.dart';

class SearchIconButton extends StatelessWidget {
  const SearchIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: (){
            Navigator.pushNamed(context, RoutesHelper.searchScreen);
        },
        child: SvgPicture.asset(AllImages.searchIconSvg, height: 22, width: 22)
    );
  }
}
