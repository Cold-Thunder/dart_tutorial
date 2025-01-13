import 'package:assignment8_ui/config/all_colors.dart';
import 'package:assignment8_ui/config/all_texts.dart';
import 'package:assignment8_ui/config/styles/text_styles.dart';
import 'package:flutter/material.dart';

class TodayLabel extends StatelessWidget {
  const TodayLabel({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Divider(height: 1, color: AllColors.borderOutlineGrey),
          Container(
            alignment: Alignment.center,
            height: 25,
            width: 80,
            decoration: BoxDecoration(
                color: AllColors.appBarWhite,
                borderRadius: BorderRadius.circular(15),
                border:
                    Border.all(width: 1, color: AllColors.borderOutlineGrey)),
            child: Text(
              AllTexts.today,
              style: TextStyles.senderTimeTextStyle.copyWith(fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
