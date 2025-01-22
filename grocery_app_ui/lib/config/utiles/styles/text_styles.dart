import 'package:flutter/material.dart';
import 'package:grocery_app_ui/config/utiles/all_colors.dart';

class AllTextStyles{
    static TextStyle skipTextStyle = TextStyle(
      fontSize: 14,
      color: AllColors.mainGreen,
      fontFamily: 'Poppins_Regular',
    );

    static TextStyle onboardHeadingStyle = TextStyle(
      fontSize: 24,
      color: AllColors.fontBlack,
      fontFamily: 'Poppins_Bold',
        fontWeight: FontWeight.bold
    );

    static TextStyle onboardDesStyle = TextStyle(
      fontSize: 14,
      color: AllColors.fontBlack,
      fontFamily:'Poppins_Regular',
    );
}