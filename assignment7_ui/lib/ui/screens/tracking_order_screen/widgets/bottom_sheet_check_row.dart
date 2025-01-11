import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/ui/screens/tracking_order_screen/widgets/check_button.dart';
import 'package:flutter/material.dart';

class BottomSheetCheckRow extends StatelessWidget {
  final String iconSvg;
  final Color color;
  final Color textColor;
  final String title;
  const BottomSheetCheckRow({required this.iconSvg, required this.color, required this.title, required this.textColor,  super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        CheckButton(iconSvg: iconSvg, color: color),
        Text(
            title,
            style: TextStyles.inputTitleStyle.copyWith(
                color: textColor
            )
        )
      ],
    );
  }
}
