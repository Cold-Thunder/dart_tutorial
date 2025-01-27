import 'package:flutter/material.dart';

import '../../../core/utiles/all_colors.dart';
import '../../../core/utiles/styles/all_text_styles.dart';

class RecentSearchKeywords extends StatelessWidget {
  final Function keywordClick;
  final String keyword;

  const RecentSearchKeywords({required this.keyword, required this.keywordClick, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
         keywordClick(keyword);
      },
      radius: 10,
      child: Container(
        margin: const EdgeInsets.only(right: 10, bottom: 10),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
        // alignment: Alignment.centerLeft,
        height: 34,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AllColors.keywordBackGrey),
        child: Text(
          keyword,
          style: AllTextStyles.onboardDesStyle,
          textAlign: TextAlign.justify,

        ),
      ),
    );
  }
}
