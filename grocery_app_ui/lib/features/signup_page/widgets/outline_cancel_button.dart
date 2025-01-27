import 'package:flutter/material.dart';

import '../../../core/utiles/all_colors.dart';
import '../../../core/utiles/all_texts.dart';
import '../../../core/utiles/styles/all_text_styles.dart';

class OutlineCancelButton extends StatelessWidget {
  const OutlineCancelButton({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 50,
      width: width*0.374,
      child: OutlinedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        style: OutlinedButton.styleFrom(
          side: BorderSide(width: 1, color: AllColors.mainGreen),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          AllTexts.cancel,
          style: AllTextStyles.elevatedButtonTextStyle
              .copyWith(color: AllColors.mainGreen),
        ),
      ),
    );
  }
}
