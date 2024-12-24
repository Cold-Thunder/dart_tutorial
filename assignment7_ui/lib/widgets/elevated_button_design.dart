import 'package:assignment7_ui/utiles/all_colors.dart';
import 'package:assignment7_ui/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/utiles/texts/on_boarding_texts.dart';
import 'package:flutter/material.dart';

class ElevatedButtonDesign extends StatelessWidget {
  final String title;
  final Widget screen;

  const ElevatedButtonDesign(
      {required this.title, required this.screen, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context)=> screen)
        );
      },
      style: ElevatedButton.styleFrom(
        fixedSize: Size.fromHeight(62),
        backgroundColor: AllColors.buttonOrange,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Text(title, style: TextStyles.elevatedButtonStyle),
    );
  }
}
