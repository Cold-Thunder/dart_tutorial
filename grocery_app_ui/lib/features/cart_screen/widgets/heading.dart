import 'package:flutter/material.dart';
import 'package:grocery_app_ui/core/utiles/styles/all_text_styles.dart';

class Heading extends StatelessWidget {
  final String title;

  const Heading({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Text(
        title,
        style: AllTextStyles.searchScreenHeading,
        textAlign: TextAlign.start
      ),
    );
  }
}
