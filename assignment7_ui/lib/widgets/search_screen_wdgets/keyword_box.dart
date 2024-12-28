import 'package:assignment7_ui/utiles/all_colors.dart';
import 'package:assignment7_ui/utiles/styles/text_styles/text_styles.dart';
import 'package:flutter/material.dart';

class KeywordBox extends StatelessWidget {
  final String title;
  final void Function(String keyword) keyValueFunction;

  const KeywordBox({required this.title, required this.keyValueFunction, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        keyValueFunction(title);
      },
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(right: 10),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        height: 46,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(33),
            border: Border.all(width: 1, color: AllColors.keyboxBorderGrey)),
        child: Text(
          title,
          style: TextStyles.appBarTitleStyle.copyWith(fontSize: 16),
        ),
      ),
    );
  }
}
