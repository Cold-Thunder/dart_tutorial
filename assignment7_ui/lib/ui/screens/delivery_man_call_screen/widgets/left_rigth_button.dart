import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LeftRightButton extends StatelessWidget {
  final String image;
  final Function? func;
  const LeftRightButton({required this.image, this.func, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        if(func != null){
          func;
        }
      },
      child: Container(
          padding: const EdgeInsets.all(12),
          height: 48.23,
          width: 48.23,
          decoration: BoxDecoration(
              color: AllColors.menuGrey,
              shape: BoxShape.circle
          ),
          child: SvgPicture.asset(image, height: 20.49, width: 20.33)
      ),
    );
  }
}
