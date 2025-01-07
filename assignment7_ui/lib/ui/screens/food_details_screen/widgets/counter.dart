import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/images/all_images.dart';
import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Counter extends StatelessWidget {
  final Function increFunc;
  final Function decreseFunc;
  final int countVal;

  const Counter(
      {required this.increFunc,
      required this.decreseFunc,
      required this.countVal,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 48,
        width: 125,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50), color: AllColors.black),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              splashColor: AllColors.transparent,
                highlightColor: AllColors.transparent,
                onTap: (){
                  decreseFunc();
                },
                child: Container(
                  padding: const EdgeInsets.all(7),
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: AllColors.white20),
                  child: SvgPicture.asset(AllImages.removeIcon,
                      height: 8, width: 8),
                )),
            Text(countVal.toString(),
                style: TextStyles.pinTextStyle
                    .copyWith(color: AllColors.appbarWhite)),
            InkWell(
                splashColor: AllColors.transparent,
                highlightColor: AllColors.transparent,
                onTap: () {
                  increFunc();
                },
                child: Container(
                  padding: const EdgeInsets.all(7),
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: AllColors.white20),
                  child: SvgPicture.asset(AllImages.whiteAddIcon,
                      height: 8, width: 8),
                )),
          ],
        ));
  }
}
