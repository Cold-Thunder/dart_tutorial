import 'package:assignment7_ui/utiles/all_colors.dart';
import 'package:assignment7_ui/utiles/styles/text_styles/text_styles.dart';
import 'package:flutter/material.dart';

class OutlineButtonDesign extends StatelessWidget{
  final String title;

  const OutlineButtonDesign({required this.title, super.key});

  @override
  Widget build(BuildContext context){
    return SizedBox(
      width: 138,
      child: OutlinedButton(
        onPressed: (){},
          style: OutlinedButton.styleFrom(
            foregroundColor: AllColors.buttonOrange,
            fixedSize: Size.fromHeight(62),
            backgroundColor: AllColors.appbarWhite,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: BorderSide(
                width: 2,
                color: AllColors.buttonOrange
              )
            ),
          ),
        child: Text(title, style: TextStyles.elevatedButtonStyle.copyWith(
          color: AllColors.buttonOrange
        ))
      ),
    );
  }
}