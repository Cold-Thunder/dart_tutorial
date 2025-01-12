import 'package:flutter/material.dart';
import 'package:widgets_use/config/utiles/styles/all_colors.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment:Alignment.center,
        height: 400,
        width: 300,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AllColors.purple
        ),
        child: Text('2', style: TextStyle(
            fontSize: 22,
            color: AllColors.white
        ))
    );
  }
}
