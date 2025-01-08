import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:flutter/material.dart';

class CircleButtons extends StatelessWidget {
  final String size;
  final bool selected;
  final Function selectFunc;
  final int ind;

  const CircleButtons({required this.size, required this.selected, required this.selectFunc, required this.ind, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: AllColors.transparent,
      highlightColor: AllColors.transparent,
      onTap: (){
        selectFunc(ind);
      },
      child: Container(
        alignment: Alignment.center,
        height: 48,
        width: 48,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: selected ? AllColors.buttonOrange : AllColors.inputFieldWhite
        ),
        child: Text(
          size,
          style: TextStyles.onboardDesStyle.copyWith(
            color: selected ? AllColors.appbarWhite: AllColors.cartBackBlack
          ),
        ),
      ),
    );
  }
}
