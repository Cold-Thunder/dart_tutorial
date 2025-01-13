import 'package:assignment8_ui/config/all_colors.dart';
import 'package:assignment8_ui/config/all_texts.dart';
import 'package:assignment8_ui/config/models/message_model.dart';
import 'package:assignment8_ui/config/styles/text_styles.dart';
import 'package:flutter/material.dart';

class ReceiverMessage extends StatelessWidget {
  final MessageModel model;
  const ReceiverMessage({required this.model, super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      alignment: Alignment.centerRight,
      margin: const EdgeInsets.symmetric(vertical: 15),
      width: width,
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          width: width*0.7,
          decoration: BoxDecoration(
              color: AllColors.mainGreen,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12),
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(12)
              )
          ),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    model.message,
                    style: TextStyles.senderTextStyle.copyWith(
                      color: AllColors.appBarWhite
                    )
                ),
                Text(
                model.time,
                    style: TextStyles.senderTimeTextStyle.copyWith(
                      color: AllColors.appBarWhite
                    )
                )
              ]
          )
      ),
    );
  }
}
