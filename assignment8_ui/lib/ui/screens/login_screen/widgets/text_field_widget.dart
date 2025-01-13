import 'package:assignment8_ui/config/all_colors.dart';
import 'package:assignment8_ui/config/styles/text_styles.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData iconData;
  final bool? secure;
  const TextFieldWidget({required this.controller, required this.hintText, required this.iconData,
    this.secure,
    super.key});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  bool showPass = true;
  bool showButton = false;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      child: TextFormField(
        controller: widget.controller,
        obscureText: widget.secure ?? false ? showPass : false,
        obscuringCharacter: '*',
        style: TextStyles.inputTextStyle.copyWith(
          fontSize: 16
        ),
        onChanged: (value){
          if(widget.secure == true && value.length > 1){
            setState((){
              showButton = true;
            });
          }
        },
        decoration: InputDecoration(
          prefixIcon: Icon(widget.iconData, size: 22, color: AllColors.appBarIconBlack,),
          suffixIcon:
            widget.secure == true && showButton
              ? IconButton(
              onPressed: (){
                  setState((){
                    showPass = !showPass;
                  });
              },
                icon: Icon(showPass? Icons.remove_red_eye : Icons.lock_outline_rounded, size: 22, color: AllColors.appBarIconBlack,))
              : null,

            hintText: widget.hintText,
            hintStyle: TextStyles.subTextStyle.copyWith(
              color: AllColors.hintGrey
            ),
            enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              width: 1,
                color: AllColors.borderOutlineGrey
            )
          ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                    width: 1,
                    color: AllColors.borderOutlineGrey
                )
            )
        )
      )
    );
  }
}
