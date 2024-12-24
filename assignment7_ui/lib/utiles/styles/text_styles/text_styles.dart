
import 'package:assignment7_ui/utiles/all_colors.dart';
import 'package:flutter/material.dart';

class TextStyles{
    static TextStyle onboardHeadStyle = TextStyle(
      fontSize: 24,
      fontFamily: 'Sen_ExtraBold',
      color: AllColors.headingBlack,
      fontWeight: FontWeight.w800
    );

    static TextStyle onboardDesStyle = TextStyle(
      fontSize: 16,
      color: AllColors.desBlack,
      fontFamily: 'Sen_Regular',
      fontWeight: FontWeight.w400
    );

    static TextStyle elevatedButtonStyle = TextStyle(
        fontSize: 14,
        color: AllColors.appbarWhite,
        fontFamily: 'Sen_Bold',
        fontWeight: FontWeight.w700
    );

    static TextStyle skipButtonStyle = TextStyle(
        fontSize: 16,
        color: AllColors.desBlack,
        fontFamily: 'Sen_Regular',
        fontWeight: FontWeight.w400
    );

    static TextStyle inputTitleStyle = TextStyle(
        fontSize: 13,
        color: AllColors.headingBlack,
        fontFamily: 'Sen_Regular',
        fontWeight: FontWeight.w400
    );

    static TextStyle hintTextStyle = TextStyle(
        fontSize: 14,
        color: AllColors.hintTextGrey,
        fontFamily: 'Sen_Regular',
        fontWeight: FontWeight.w400
    );

}