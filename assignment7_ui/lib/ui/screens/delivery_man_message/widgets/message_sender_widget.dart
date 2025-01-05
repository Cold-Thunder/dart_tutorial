import 'package:assignment7_ui/config/models/delivery_man_message.dart';
import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/ui/widgets/grey_card.dart';
import 'package:flutter/material.dart';

class MessageSenderWidget extends StatelessWidget {
  final DeliveryManMessageModel model;

  const MessageSenderWidget({required this.model, super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      width: width,
      alignment: Alignment.topLeft,
      child: Row(
        spacing: 8,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 15),
            alignment: Alignment.topLeft,
            child: GreyCard(height: 40, width: 40, borderRad: 20),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            spacing: 5,
            children: [
              Text(model.time, style: TextStyles.msgTimeTextStyle),
              Container(
                width: width * 0.6,
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AllColors.inputFieldWhite),
                child: Text(
                  model.message,
                  style: TextStyles.dropDownTextStyle,
                ),
              )
            ],
          ),

        ],
      ),
    );
  }
}
