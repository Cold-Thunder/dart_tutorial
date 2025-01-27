import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/utiles/all_colors.dart';
import '../../../core/utiles/all_images.dart';

class CheckMark extends StatelessWidget {
  const CheckMark({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        width: 130,
        height: 130,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AllColors.lightTransGreen
        ),
        child: Container(
            alignment: Alignment.center,
            height:90,
            width: 90,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AllColors.mainGreen
            ),
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(3),
              height: 28,
              width: 28,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AllColors.white,
              ),
              child: SvgPicture.asset(AllImages.greenCheckMark, height: 15, width: 15),
            )
        )
    );
  }
}
