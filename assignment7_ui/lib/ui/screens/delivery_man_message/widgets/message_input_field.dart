import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/all_images.dart';
import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/config/utiles/all_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MessageInputField extends StatelessWidget {
  final TextEditingController controller;
  const MessageInputField({required this.controller, super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 62,
      width: width,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
           hintText: AllTexts.msgInputHint,
          hintStyle: TextStyles.msgTimeTextStyle,
          filled: true,
          fillColor: AllColors.inputFieldWhite,
          prefixIcon: InkWell(
            onTap: (){},
              splashColor: AllColors.transparent,
              highlightColor: AllColors.transparent,
            child: Container(
              height: 62,
              width: 40,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(left: 5),
              child: SvgPicture.asset(AllImages.smileIcon, height: 18.12, width: 18.12),
            )
          ),
          suffixIcon: InkWell(
              onTap: (){

              },
              splashColor: AllColors.transparent,
              highlightColor: AllColors.transparent,
              child: Container(
                height: 42,
                width: 42,
                margin: const EdgeInsets.only(top:5, bottom: 5, right: 15),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AllColors.appbarWhite
                ),
                child: SvgPicture.asset(AllImages.sendIcon, height: 20, width: 20),
              )
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              width: 0,
              color: AllColors.transparent
            )
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                  width: 0,
                  color: AllColors.transparent
              )
          ),
        ),
      )
    );
  }
}
