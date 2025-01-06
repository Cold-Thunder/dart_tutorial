import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TextInputField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final bool? secure;
  final bool? text;
  final String? prefixIconSvg;

  const TextInputField(
      {required this.controller,
      required this.hintText,
      this.secure,
      this.text,
      this.prefixIconSvg,
      super.key});

  @override
  State<TextInputField> createState() => _TextInputFieldState();
}

class _TextInputFieldState extends State<TextInputField> {
  bool showPass = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: TextField(
        controller: widget.controller,
        style:
            TextStyles.hintTextStyle.copyWith(color: AllColors.inputTextBlack),
        cursorColor: AllColors.inputTextBlack,
        obscureText: widget.secure ?? false ? showPass : false,
        //controlling text input type
        keyboardType:
            widget.text ?? true ? TextInputType.text : TextInputType.number,
        // decorating input field
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: TextStyles.hintTextStyle,
          filled: true,
          fillColor: AllColors.inputFieldWhite,
          contentPadding: const EdgeInsets.symmetric(horizontal: 15),
          prefixIcon: Visibility(
              visible: widget.prefixIconSvg != null,
              child: widget.prefixIconSvg != null ? Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: SvgPicture.asset(
                  widget.prefixIconSvg!,
                  height: 20,
                  width: 20,
                ),
              ) : SizedBox()
          ),
          prefixIconConstraints: BoxConstraints(maxHeight: 40, maxWidth: 40),
          // controlling suffix
          suffixIcon: Visibility(
            visible: widget.secure ?? false,
            child: IconButton(
              onPressed: () {
                setState(() {
                  showPass = !showPass;
                });
              },
              icon: Icon(showPass ? Icons.remove_red_eye : Icons.lock,
                  color: AllColors.hintTextGrey),
            ),
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(width: 0, color: AllColors.transparent)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 0, color: AllColors.transparent),
          ),
        ),
      ),
    );
  }
}
