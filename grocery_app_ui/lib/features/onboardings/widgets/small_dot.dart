import 'package:flutter/material.dart';

import '../../../core/utiles/all_colors.dart';

class SmallDot extends StatelessWidget {
  final int index;
  final int givenInd;
  const SmallDot({required this.index, required this.givenInd, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 8,
        width: 8,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: index == givenInd ? AllColors.mainGreen : AllColors.dotGrey
        )
    );
  }
}
