import 'package:assignment8_ui/config/all_colors.dart';
import 'package:assignment8_ui/config/models/active_user_model.dart';
import 'package:flutter/material.dart';

class CircleCard extends StatelessWidget {
  final ActiveUserModel model;

  const CircleCard({required this.model, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      splashColor: AllColors.transparent,
      highlightColor: AllColors.transparent,
      child: Container(
        padding: const EdgeInsets.all(2),
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: model.story ? Border.all(
            width: 2,
            color: AllColors.mainGreen
          ): null
        ),
        child: Image.asset(model.image, height: 48, width: 48, fit: BoxFit.fill)
      ),
    );
  }
}
