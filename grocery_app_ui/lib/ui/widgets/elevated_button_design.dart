import 'package:flutter/material.dart';
import 'package:grocery_app_ui/config/utiles/all_colors.dart';
import 'package:grocery_app_ui/config/utiles/styles/all_text_styles.dart';

class ElevatedButtonDesign extends StatelessWidget {
  final String title;
  final Function? func;
  final String? screen;

  const ElevatedButtonDesign({this.func, this.screen, required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 56,
      width: width,
      child: ElevatedButton(
          onPressed: (){
            if(func != null){
              func;
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
