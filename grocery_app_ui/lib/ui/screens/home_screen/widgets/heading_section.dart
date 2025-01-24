import 'package:flutter/material.dart';
import 'package:grocery_app_ui/config/utiles/all_texts.dart';
import 'package:grocery_app_ui/config/utiles/styles/all_text_styles.dart';

class HeadingSection extends StatelessWidget {
  final String title;
  final String? seeAllWidget;
  const HeadingSection({required this.title, this.seeAllWidget, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
          Text(
            title,
            style: AllTextStyles.onboardHeadingStyle.copyWith(
              fontSize: 16
            )
          ),
        InkWell(
          onTap: (){
            if(seeAllWidget != null){
              Navigator.pushNamed(context, seeAllWidget!);
            }
          },
          child: Text(
            AllTexts.seeAll,
            style: AllTextStyles.skipTextStyle.copyWith(
              fontSize: 14
            )
          )
        )
      ],
    );
  }
}
