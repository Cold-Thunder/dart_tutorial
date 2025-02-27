import 'package:flutter/material.dart';
import 'package:grocery_app_ui/core/utiles/styles/all_text_styles.dart';

class Heading extends StatelessWidget {
  final String title;
  final double? size;

  const Heading({
    required this.title,
    this.size,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Text(
        title,
        style: AllTextStyles.searchScreenHeading.copyWith(
          fontSize: size ?? 16
        ),
        textAlign: TextAlign.start
      ),
    );
  }
}
