import 'package:flutter/material.dart';
import '../../../core/utiles/all_colors.dart';
import '../../../core/utiles/styles/all_text_styles.dart';

class ElevatedButtonDesign extends StatelessWidget {
  final String title;
  final Function? contextFunc;
  final Function? func;
  final String? screen;
  final double? givenWidth;
  final double? givenHeight;
  final double? fontSize;

  const ElevatedButtonDesign({this.contextFunc, this.fontSize, this.givenWidth, this.givenHeight, this.func, this.screen, required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: givenHeight ?? 56,
      width: givenWidth ?? width,
      child: ElevatedButton(
          onPressed: (){
            if(func != null){
              func!();
            }
            if(contextFunc != null){
              contextFunc!(context);
            }
            if(screen != null){
              Navigator.pushNamed(context, screen!);
            }
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: AllColors.mainGreen,
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12)
            )
          ),
          child: Text(
            title,
            style: AllTextStyles.elevatedButtonTextStyle.copyWith(
              fontSize: fontSize ?? 16
            )
          )
      )
    );
  }
}
