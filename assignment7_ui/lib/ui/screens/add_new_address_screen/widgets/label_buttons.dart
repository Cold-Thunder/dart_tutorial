import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:flutter/material.dart';

class LabelButtons extends StatelessWidget {
  final String title;
  final bool selected;
  final Function selectFunc;
  final int ind;

  const LabelButtons({required this.title,required this.ind, required this.selected, required this.selectFunc, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
          selectFunc(ind);
      },
      splashColor: AllColors.transparent,
      highlightColor: AllColors.transparent,
      child: Container(
        alignment: Alignment.center,
        width: 94,
        height: 45,
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: selected ? AllColors.buttonOrange : AllColors.inputFieldWhite ,
          borderRadius: BorderRadius.circular(22.5)
        ),
        child: Text(
          title,
          style: TextStyles.headingTextStyle.copyWith(
            fontSize: 14,
            color: selected ? AllColors.appbarWhite : AllColors.headingBlack
          )
        )
      ),
    );
  }
}
