import 'package:flutter/material.dart';
import 'package:grocery_app_ui/config/utiles/all_colors.dart';
import 'package:grocery_app_ui/config/utiles/styles/all_text_styles.dart';

class ElevatedButtonDesign extends StatelessWidget {
  final String title;
  final Function? func;
  final String? screen;
  final double? givenWidth;
  final double? height;

  const ElevatedButtonDesign({this.givenWidth, this.height, this.func, this.screen, required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height ?? 56,
      width: givenWidth ?? width,
      child: ElevatedButton(
          onPressed: (){
            if(func != null){
              func!(context);
            }
            if(screen != null){
              Navigator.pushNamed(context, screen!);
            }
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: AllColors.mainGreen,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12)
            )
          ),
          child: Text(
            title,
            style: AllTextStyles.elevatedButtonTextStyle
          )
      )
    );
  }
}
