import 'package:flutter/material.dart';
import '../../../core/utiles/styles/all_text_styles.dart';

class SearchScreenHeading extends StatelessWidget {
  final String heading;
  const SearchScreenHeading({required this.heading, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      heading,
      style: AllTextStyles.searchScreenHeading
    );
  }
}
