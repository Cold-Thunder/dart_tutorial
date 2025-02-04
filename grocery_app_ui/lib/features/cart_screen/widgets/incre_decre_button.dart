import 'package:flutter/material.dart';
import 'package:grocery_app_ui/core/utiles/all_colors.dart';
import 'package:grocery_app_ui/core/utiles/styles/all_text_styles.dart';

class IncreDecreButton extends StatelessWidget {
  final int count;
  final Function addFunc;
  final Function removeFunc;

  const IncreDecreButton({
    required this.count,
    required this.addFunc,
    required this.removeFunc,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      decoration: BoxDecoration(
        color: AllColors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 1, color: AllColors.mainGreen),
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              removeFunc();
            },
            child: Container(
              alignment: Alignment.center,
              height: 30,
              width: 30,
              child: Text(
                '-',
                style: AllTextStyles.increDecreStyle,
              ),
            ),
          ),
          Text(
              "$count",
              style: AllTextStyles.searchScreenHeading.copyWith(
                fontSize: 14
              )
          ),
          InkWell(
            onTap: () {
              addFunc();
            },
            child: Container(
              alignment: Alignment.center,
              height: 30,
              width: 30,
              child: Text(
                '+',
                style: AllTextStyles.increDecreStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
