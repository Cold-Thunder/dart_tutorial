
import 'package:assignment7_ui/config//utiles/all_colors.dart';
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

    static TextStyle pinTextStyle = TextStyle(
        fontSize: 16,
        color: AllColors.headingBlack,
        fontFamily: 'Sen_Bold',
        fontWeight: FontWeight.w700
    );

    static TextStyle homeAppBarTitle = TextStyle(
        fontSize: 12,
        color: AllColors.buttonOrange,
        fontFamily: 'Sen_Bold',
        fontWeight: FontWeight.w700
    );

    static TextStyle dropDownTextStyle = TextStyle(
        fontSize: 14,
        color: AllColors.dropDownBlack,
        fontFamily: 'Sen_Regular',
        fontWeight: FontWeight.w400
    );

    static TextStyle headingTextStyle = TextStyle(
        fontSize: 20,
        color: AllColors.headingBlack,
        fontFamily: 'Sen_Regular',
        fontWeight: FontWeight.w400
    );

    static TextStyle categoryHeadingStyle = TextStyle(
        fontSize: 18,
        color: AllColors.headingBlack,
        fontFamily: 'Sen_Bold',
        fontWeight: FontWeight.w700
    );


    static TextStyle dialougHeadingStyle = TextStyle(
        fontSize: 41,
        color: AllColors.appbarWhite,
        fontFamily: 'Sen_Bold',
        fontWeight: FontWeight.w800
    );

    static TextStyle paySuccessHeadStyle = TextStyle(
        fontSize: 24,
        color: AllColors.paySuccessHeadingBlack,
        fontFamily: 'Sen_Bold',
        fontWeight: FontWeight.w700
    );

    static TextStyle appBarTitleStyle = TextStyle(
        fontSize: 17,
        color: AllColors.cartBlack,
        fontFamily: 'Sen_Regular',
        fontWeight: FontWeight.w400
    );

    static TextStyle profileNameStyle = TextStyle(
        fontSize: 20,
        color: AllColors.cartBlack,
        fontFamily: 'Sen_Bold',
        fontWeight: FontWeight.w700
    );

    static TextStyle orderIdStyle = TextStyle(
        fontSize: 14,
        color: AllColors.orderItemCountGrey,
        fontFamily: 'Sen_Regular',
        fontWeight: FontWeight.w400,
        decoration: TextDecoration.underline,
        decorationColor: AllColors.orderItemCountGrey,
    );

    static TextStyle itemCountTextStyle = TextStyle(
        fontSize: 12,
        color: AllColors.orderItemCountGrey,
        fontFamily: 'Sen_Regular',
        fontWeight: FontWeight.w400
    );

    static TextStyle completedTextStyle = TextStyle(
        fontSize: 14,
        color: AllColors.completedGreen,
        fontFamily: 'Sen_Bold',
        fontWeight: FontWeight.w700
    );

    static TextStyle canceledTextStyle = TextStyle(
        fontSize: 14,
        color: AllColors.canceledRed,
        fontFamily: 'Sen_Bold',
        fontWeight: FontWeight.w700
    );

    static TextStyle masterCardDesTextStyle = TextStyle(
        fontSize: 15,
        color: AllColors.masterDesGrey,
        fontFamily: 'Sen_Regular',
        fontWeight: FontWeight.w400
    );

    static TextStyle msgTimeTextStyle = TextStyle(
        fontSize: 12,
        color: AllColors.msgTimeGrey,
        fontFamily: 'Sen_Regular',
        fontWeight: FontWeight.w400
    );
}
