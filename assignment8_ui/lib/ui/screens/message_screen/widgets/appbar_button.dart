import 'package:assignment8_ui/config/all_colors.dart';
import 'package:flutter/material.dart';

class AppbarButton extends StatelessWidget {
  final IconData iconData;
  final Function? func;

  const AppbarButton({required this.iconData, this.func, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        if(func != null){
          func!();
        }
      },
      splashColor: AllColors.transparent,
      highlightColor: AllColors.transparent,
      child: Container(
        margin: const EdgeInsets.only(left: 15),
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            width: 1,
            color: AllColors.borderOutlineGrey
          )
        ),
        child: Icon(iconData, size: 22, color: AllColors.headingBlack)
      ),
    );
  }
}
