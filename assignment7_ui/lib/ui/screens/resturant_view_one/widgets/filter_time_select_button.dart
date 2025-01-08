import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:flutter/material.dart';

class FilterTimeSelectButton extends StatelessWidget {
  final int index;
  final String title;
  final bool selected;
  final Function selFunc;

  const FilterTimeSelectButton(
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
        margin: const EdgeInsets.only(right: 10, top: 10),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        height: 46,
        decoration: BoxDecoration(
            color: selected ? AllColors.buttonOrange : AllColors.appbarWhite,
            borderRadius: BorderRadius.circular(33),
            border: Border.all(
                width: selected ? 0 : 2,
                color: selected
                    ? AllColors.transparent
                    : AllColors.keyboxBorderGrey)),
        child: Text(
          title,
          style: TextStyles.onboardDesStyle.copyWith(
              color:
                  selected ? AllColors.appbarWhite : AllColors.smallVisaGrey),
        ),
      ),
    );
  }
}
