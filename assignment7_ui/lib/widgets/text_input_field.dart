
import 'package:assignment7_ui/utiles/all_colors.dart';
import 'package:assignment7_ui/utiles/styles/text_styles/text_styles.dart';
import 'package:flutter/material.dart';

class TextInputField extends StatefulWidget{
  final TextEditingController controller;
  final String hintText;
  final bool? secure;
  const TextInputField({required this.controller, required this.hintText, this.secure, super.key});

  @override
  State<TextInputField> createState() => _TextInputFieldState();
}

class _TextInputFieldState extends State<TextInputField> {
  bool showPass = true;

  @override
  Widget build(BuildContext context){
    return SizedBox(
      height: 62,
      child: TextField(
        controller: widget.controller,
        style: TextStyles.hintTextStyle.copyWith(
          color: AllColors.inputTextBlack
        ),
        cursorColor: AllColors.inputTextBlack,
        obscureText: widget.secure ?? false ? showPass : false,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: TextStyles.hintTextStyle,
          filled: true,
          fillColor: AllColors.inputFieldWhite,
          contentPadding: const EdgeInsets.symmetric(horizontal: 15),
          suffixIcon: widget.secure ?? false ? IconButton(
            onPressed: (){
              setState((){
                showPass = !showPass;
              });
            },
            icon: Icon(showPass ? Icons.remove_red_eye : Icons.lock , color: AllColors.hintTextGrey)
          ) : null,
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