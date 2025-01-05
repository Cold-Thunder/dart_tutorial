import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:flutter/material.dart';

class TitleSection extends StatelessWidget {
  final String title;

  const TitleSection({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyles.headingTextStyle.copyWith(
        fontSize: 14,
      )
    );
  }
}
