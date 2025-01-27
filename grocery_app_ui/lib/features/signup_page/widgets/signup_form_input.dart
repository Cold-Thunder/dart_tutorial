import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/utiles/all_colors.dart';
import '../../../core/utiles/all_images.dart';
import '../../../core/utiles/styles/all_text_styles.dart';

class SignupFormInput extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  final bool? secure;
  final bool? number;
  final GlobalKey<FormFieldState> keyState;
  const SignupFormInput({required this.hintText, required this.controller, required this.keyState, this.secure, this.number, super.key});

  @override
  State<SignupFormInput> createState() => _SignupFormInputState();
}

class _SignupFormInputState extends State<SignupFormInput> {
  bool showPass = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: TextFormField(
        key: widget.keyState,
        controller: widget.controller,
        textAlignVertical: TextAlignVertical.center,
        obscureText: widget.secure ?? false ? showPass : false,
        obscuringCharacter: '*',
        style: AllTextStyles.socialLogBtnStyle,
        cursorColor: AllColors.mainGreen,
        keyboardType: widget.number == true ? TextInputType.phone : TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: AllTextStyles.socialLogBtnStyle,
          contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          // isDense: true,
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
              color: AllColors.mainGreen
            )
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                  width: 1,
                  color: AllColors.mainGreen
              )
          ),
        )
      )
    );
  }
}
