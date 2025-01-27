
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/utiles/all_images.dart';
import '../../../core/utiles/routes_helper.dart';

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
