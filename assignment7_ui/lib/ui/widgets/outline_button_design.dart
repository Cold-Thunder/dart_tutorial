import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/ui/screens/add_card_screen/add_card_screen.dart';
import 'package:flutter/material.dart';

class OutlineButtonDesign extends StatelessWidget {
  final String title;
  final Widget? screen;
  final Color? color;

  const OutlineButtonDesign({required this.title, this.screen, this.color, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 138,
      height: 62,
      child: OutlinedButton(
        onPressed: () {
          if(screen != null){
            Navigator.push(context, MaterialPageRoute(
              builder: (context)=> AddCardScreen()
            ),);
          }
        },
        style: OutlinedButton.styleFrom(
          foregroundColor: AllColors.buttonOrange,
          fixedSize: Size.fromHeight(62),
          backgroundColor: AllColors.appbarWhite,
          side: BorderSide(width: 2, color:color ?? AllColors.buttonOrange),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          title,
          style: TextStyles.elevatedButtonStyle
              .copyWith(color: AllColors.buttonOrange),
        ),
      ),
    );
  }
}
