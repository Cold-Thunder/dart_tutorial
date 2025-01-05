import 'package:assignment7_ui/ui/screens/add_new_address_screen/widgets/title_section.dart';
import 'package:assignment7_ui/ui/widgets/auth_type_widgets/text_input_field.dart';
import 'package:flutter/material.dart';

class LeftRightInput extends StatelessWidget {
  final String title;
  final String hintText;
  final TextEditingController controller;

  const LeftRightInput({required this.title, required this.hintText, required this.controller,  super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
        width: width * 0.44,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleSection(title: title),
              const SizedBox(height: 10),
              TextInputField(controller: controller, hintText: hintText)
            ]
        )
    );
  }
}
