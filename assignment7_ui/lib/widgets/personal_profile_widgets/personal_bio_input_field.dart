
import 'package:assignment7_ui/utiles/all_colors.dart';
import 'package:assignment7_ui/utiles/styles/text_styles/text_styles.dart';
import 'package:flutter/material.dart';

class PersonalBioInputField extends StatelessWidget{
  final TextEditingController controller;
  final String hintText;
  PersonalBioInputField({required this.controller, required this.hintText, super.key});

  bool showPass = true;

  @override
  Widget build(BuildContext context){
    return SizedBox(
      // height: 103,
      child: TextField(
          controller: controller,
          style: TextStyles.hintTextStyle.copyWith(
              color: AllColors.inputTextBlack
          ),
          cursorColor: AllColors.inputTextBlack,
          maxLines: 4,
          // decorating input field
          decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyles.hintTextStyle,
              filled: true,
              fillColor: AllColors.inputFieldWhite,
              contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              // controlling suffix
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                      width: 0,
                      color: AllColors.transparent
                  )
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                      width: 0,
                      color: AllColors.transparent
                  )
              )
          )
      ),
    );
  }
}