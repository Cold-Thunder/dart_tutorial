import 'package:flutter/material.dart';
import 'package:grocery_app_ui/core/utiles/all_colors.dart';
import 'package:grocery_app_ui/core/utiles/all_texts.dart';
import 'package:grocery_app_ui/core/utiles/styles/all_text_styles.dart';

class OutlineButtonDesign extends StatelessWidget {
  const OutlineButtonDesign({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: 56,
      width: size.width*0.42,
      child: OutlinedButton(
          onPressed: (){
            Navigator.pop(context);
          },
          style: OutlinedButton.styleFrom(
            backgroundColor: AllColors.white,
            side: BorderSide(
                width: 2,
              color: AllColors.barGrey
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: Text(AllTexts.cancel, style: AllTextStyles.socialLogBtnStyle),
      )
    );
  }
}
