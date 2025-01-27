import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../core/utiles/all_colors.dart';
import '../../../core/utiles/styles/all_text_styles.dart';

class PinInputTaker extends StatelessWidget {
  TextEditingController digit = TextEditingController();
  PinInputTaker({required this.digit, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      width: 62,
      child: TextField(
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
        keyboardType: TextInputType.number,
        style: AllTextStyles.onboardHeadingStyle,
        textAlign: TextAlign.center,
        cursorColor: AllColors.mainGreen,
        decoration: InputDecoration(
          filled: true,
          fillColor: AllColors.white,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 0, color: AllColors.inputOutlineGrey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 0, color: AllColors.inputOutlineGrey),
          ),
        ),
      ),
    );
  }
}