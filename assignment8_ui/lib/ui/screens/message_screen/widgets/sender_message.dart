import 'package:assignment8_ui/config/all_colors.dart';
import 'package:assignment8_ui/config/all_texts.dart';
import 'package:assignment8_ui/config/models/message_model.dart';
import 'package:assignment8_ui/config/styles/text_styles.dart';
import 'package:flutter/material.dart';

class SenderMessage extends StatelessWidget {
  final MessageModel model;
  const SenderMessage({required this.model, super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.symmetric(vertical: 15),
      width: width,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        width: width*0.7,
        decoration: BoxDecoration(
          color: AllColors.senderBackGrey,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(12),
            topLeft: Radius.circular(12),
            bottomRight: Radius.circular(12)
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
                model.message,
                style: TextStyles.senderTextStyle
            ),
            Text(
                model.time,
              style: TextStyles.senderTimeTextStyle
            )
          ]
        )
      ),
    );
  }
}
