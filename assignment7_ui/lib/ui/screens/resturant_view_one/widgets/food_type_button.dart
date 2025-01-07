import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:flutter/material.dart';

class FoodTypeButton extends StatelessWidget {
  final int index;
  final String title;
  final bool selected;
  final Function selectedFunc;

  const FoodTypeButton(
      {required this.index,
      required this.title,
      required this.selected,
      required this.selectedFunc,
      super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        splashColor: AllColors.transparent,
        highlightColor: AllColors.transparent,
        onTap: () {
          selectedFunc(index);
        },
        child: Container(
          alignment: Alignment.center,
            margin: const EdgeInsets.only(right: 10),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            height: 48,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(33),
                color: selected
                    ? AllColors.buttonOrange
                    : AllColors.inputFieldWhite,
                border: Border.all(
                    width: selected ? 0 : 2,
                    color: selected
                        ? AllColors.transparent
                        : AllColors.keyboxBorderGrey)),
            child: Text(title,
                style: TextStyles.appBarTitleStyle.copyWith(
                    fontSize: 16,
                    color: selected
                        ? AllColors.appbarWhite
                        : AllColors.cartBackBlack))));
  }
}
