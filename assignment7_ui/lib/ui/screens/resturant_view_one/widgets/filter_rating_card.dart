import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/images/all_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FilterRatingCard extends StatelessWidget {
  final int index;
  final bool selected;
  final Function selFunc;

  const FilterRatingCard(
      {required this.index,
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
            color: AllColors.appbarWhite,
            shape: BoxShape.circle,
            border: Border.all(
                width: 2,
                color: AllColors.keyboxBorderGrey)),
        child: SvgPicture.asset(
          selected ? AllImages.starOrange : AllImages.starGrey,
          height: 18.5,
          width: 18.5
        ),
      ),
    );
  }
}
