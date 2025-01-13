import 'package:assignment8_ui/config/all_colors.dart';
import 'package:flutter/material.dart';

class TextStyles{
  static TextStyle headingTextStyle = TextStyle(
    fontSize: 28,
    color: AllColors.headingBlack,
    fontWeight: FontWeight.bold
  );
  static TextStyle smallHeadingTextStyle = TextStyle(
      fontSize: 18,
      color: AllColors.headingBlack,
      fontWeight: FontWeight.bold
  );
  static TextStyle subTextStyle = TextStyle(
    fontSize: 18,
    color: AllColors.headingBlack,
  );

  static TextStyle inputTextStyle = TextStyle(
    fontSize: 18,
    color: AllColors.headingBlack
  );
  static TextStyle loginButtonTextStyle = TextStyle(
    fontSize: 16,
    color: AllColors.appBarWhite
  );

  static TextStyle userMessageTextStyle = TextStyle(
    fontSize: 17,
    color: AllColors.messageGrey
  );

  static TextStyle msgCountTextStyle = TextStyle(
    fontSize: 15,
    color: AllColors.appBarWhite
  );

  static TextStyle messageHintTextStyle = TextStyle(
    fontSize: 14,
    color: AllColors.hintGrey
  );

  static TextStyle senderTextStyle = TextStyle(
    fontSize: 16,
    color: AllColors.headingBlack
  );
  static TextStyle senderTimeTextStyle = TextStyle(
    fontSize: 12,
    color: AllColors.messageGrey
  );

}