import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:flutter/material.dart';

class PriceTypesButton extends StatelessWidget {
  final int index;
  final String title;
  final bool selected;
  final Function selFunc;

  const PriceTypesButton(
      {required this.index,
        required this.title,
        required this.selected,
        required this.selFunc,
        super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        selFunc(index);
      },
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(right: 10),
        height: 48,
        width: 48,
        decoration: BoxDecoration(
            color: selected ? AllColors.buttonOrange : AllColors.appbarWhite,
            shape: BoxShape.circle,
            border: Border.all(
                width: selected ? 0 : 2,
                color: selected
                    ? AllColors.transparent
                    : AllColors.keyboxBorderGrey)),
        child: Text(
          title*(index+1),
          style: TextStyles.onboardDesStyle.copyWith(
              color:
              selected ? AllColors.appbarWhite : AllColors.smallVisaGrey),
        ),
      ),
    );
  }
}
