import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app_ui/config/utiles/all_colors.dart';
import 'package:grocery_app_ui/config/utiles/all_images.dart';
import 'package:grocery_app_ui/config/utiles/styles/all_text_styles.dart';

class LoginForm extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  final bool? secure;
  const LoginForm({required this.hintText, required this.controller, this.secure, super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool showPass = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: TextField(
        controller: widget.controller,
        textAlignVertical: TextAlignVertical.center,
        obscureText: widget.secure ?? false ? showPass : false,
        obscuringCharacter: '*',
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: AllTextStyles.socialLogBtnStyle,
          contentPadding: const EdgeInsets.symmetric(horizontal: 15),
          suffixIcon: widget.secure ?? false ? InkWell(
            splashColor: AllColors.transparent,
            highlightColor: AllColors.transparent,
            onTap:(){
              setState((){
                showPass =!showPass;
              });
            },
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(12),
              height: 50,
              width: 50,
              child: SvgPicture.asset(showPass ? AllImages.eyeOffIconSvg : AllImages.eyeIconSvg, height: 40, width: 40)
            )
          ) : null,
          suffixIconConstraints: BoxConstraints(maxHeight: 56,maxWidth: 56),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              width: 1,
              color: AllColors.inputOutlineGrey
            )
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                  width: 1,
                  color: AllColors.inputOutlineGrey
              )
          ),
        )
      )
    );
  }
}
