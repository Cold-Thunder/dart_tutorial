import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/all_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CallButton extends StatelessWidget {
  const CallButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
                height: 105,
                width: 105,
                decoration: BoxDecoration(
                    color: AllColors.transparentOrange5,
                    shape: BoxShape.circle
                )
            ),
            Container(
                height: 85,
                width: 85,
                decoration: BoxDecoration(
                    color: AllColors.transparentOrange10,
                    shape: BoxShape.circle
                )
            ),
            Container(
                padding: const EdgeInsets.all(15),
                height: 60.39,
                width: 60.39,
                decoration: BoxDecoration(
                    color: AllColors.callRed,
                    shape: BoxShape.circle
                ),
                child: SvgPicture.asset(AllImages.callIcon, height: 30.05, width: 30.05)
            ),
          ]
      ),
    );
  }
}
