import 'package:flutter/material.dart';
import 'package:widgets_use/config/utiles/styles/all_colors.dart';

class WrapCard extends StatelessWidget {
  const WrapCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 100,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AllColors.swedenBlue,
        borderRadius: BorderRadius.circular(13)
      ),
      child: Text('adad')
    );
  }
}
