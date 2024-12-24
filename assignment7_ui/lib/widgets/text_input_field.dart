
import 'package:assignment7_ui/utiles/all_colors.dart';
import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget{
  final TextEditingController controller;
  final String hintText;
  const TextInputField({required this.controller, required this.hintText, super.key});

  @override
  Widget build(BuildContext context){
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: AllColors.inputFieldColor
      )
    );
  }
}