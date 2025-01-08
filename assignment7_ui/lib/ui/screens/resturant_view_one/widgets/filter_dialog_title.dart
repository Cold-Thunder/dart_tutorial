import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:flutter/material.dart';

class FilterDialogTitle extends StatelessWidget {
  final String title;
  const FilterDialogTitle({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
        title,
        style: TextStyles.inputTitleStyle
    );
  }
}
