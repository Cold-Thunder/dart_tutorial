import 'package:assignment7_ui/config/models/delivery_man_message.dart';
import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/images/all_images.dart';
import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/ui/widgets/grey_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MessageRecieverWidget extends StatelessWidget {
  final DeliveryManMessageModel model;

  const MessageRecieverWidget({required this.model, super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      width: width,
      alignment: Alignment.topLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        spacing: 8,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 18),
            alignment: Alignment.center,
            child: SvgPicture.asset(AllImages.doubleCheckIcon, height: 9, width: 7.27),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 5,
            children: [
              Text(model.time, style: TextStyles.msgTimeTextStyle),
              Container(
                width: width * 0.6,
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AllColors.buttonOrange),
                child: Text(
                  model.message,
                  style: TextStyles.dropDownTextStyle.copyWith(
                    color: AllColors.appbarWhite
                  ),
                ),
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 18),
            alignment: Alignment.topLeft,
            child: GreyCard(height: 40, width: 40, borderRad: 20, color: AllColors.recieveOrange,),
          ),
        ],
      ),
    );
  }
}
