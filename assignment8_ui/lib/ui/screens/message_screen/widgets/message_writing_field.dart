import 'package:assignment8_ui/config/all_colors.dart';
import 'package:assignment8_ui/config/all_texts.dart';
import 'package:assignment8_ui/config/styles/text_styles.dart';
import 'package:assignment8_ui/ui/screens/message_screen/widgets/prefix_icon_widget.dart';
import 'package:assignment8_ui/ui/screens/message_screen/widgets/suffix_icon_widget.dart';
import 'package:flutter/material.dart';

class MessageWritingField extends StatelessWidget {
  final TextEditingController controller;
  const MessageWritingField({required this.controller, super.key});


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: AllTexts.writeMsg,
            hintStyle: TextStyles.messageHintTextStyle,
            contentPadding: const EdgeInsets.symmetric(horizontal:15),
            prefixIcon: PrefixIconWidget(),
            suffixIcon: SuffixIconWidget(),
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
