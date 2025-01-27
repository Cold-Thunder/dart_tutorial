import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:flutter/material.dart';

class ElevatedButtonDesign extends StatelessWidget {
  final String title;
  final Widget? screen;
  final bool? icon;
  final void Function()? function;
  final double? height;

  const ElevatedButtonDesign(
      {this.height,
        required this.title, this.screen, this.icon, this.function, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
       screen != null ?
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context)=> screen!)
          ) : null;

          if(function !=  null){
            function!();
          }
      },
      style: ElevatedButton.styleFrom(
        fixedSize: Size.fromHeight(height ?? 62),
        backgroundColor: AllColors.buttonOrange,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title, style: TextStyles.elevatedButtonStyle),
          icon ?? false ? Container(
            margin: const EdgeInsets.only(left: 25),
            height: 32,
            width: 32,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AllColors.iconBackOrange
            ),
            child: Icon(Icons.location_on_outlined, size: 16, color: AllColors.appbarWhite)
          ) : SizedBox()
        ],
      ),
    );
  }
}
