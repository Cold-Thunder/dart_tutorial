import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
        style: TextStyles.pinTextStyle,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          filled: true,
          fillColor: AllColors.inputFieldWhite,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 0, color: AllColors.transparent),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 0, color: AllColors.transparent),
          ),
        ),
      ),
    );
  }
}
