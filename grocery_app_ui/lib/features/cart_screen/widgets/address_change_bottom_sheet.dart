import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:grocery_app_ui/core/utiles/all_colors.dart';
import 'package:grocery_app_ui/core/utiles/all_texts.dart';
import 'package:grocery_app_ui/core/utiles/styles/all_text_styles.dart';

class AddressChangeBottomSheet extends StatelessWidget {
  const AddressChangeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BackdropFilter(
        filter: ImageFilter.blur(sigmaX:6, sigmaY: 6),
      child: Container(
        width: size.width,
        height: 436,
        decoration: BoxDecoration(
          color: AllColors.white,
          borderRadius: BorderRadius.circular(15)
        ),
        child: Column(
          children: [
            const SizedBox(height: 15),
            Container(
              height: 3,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: AllColors.barGrey
              )
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Text(AllTexts.selectAnAddress, style: AllTextStyles.searchScreenHeading,),
                InkWell(
                  onTap: (){},
                  child: Container()
                )
              ],
            )
          ],
        )
      )
    );
  }
}
