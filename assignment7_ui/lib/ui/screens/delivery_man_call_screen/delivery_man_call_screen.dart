import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/images/all_images.dart';
import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/config/utiles/texts/all_texts.dart';
import 'package:assignment7_ui/ui/screens/delivery_man_call_screen/widgets/call_button.dart';
import 'package:assignment7_ui/ui/screens/delivery_man_call_screen/widgets/left_rigth_button.dart';
import 'package:assignment7_ui/ui/widgets/grey_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DeliveryManCallScreen extends StatelessWidget {
  const DeliveryManCallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        color: AllColors.callScreenBackGrey,
        alignment: Alignment.bottomCenter,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          height: 377,
          width: width,
          decoration: BoxDecoration(
            color: AllColors.appbarWhite,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GreyCard(height: 105, width: 105, borderRad: 57),
              const SizedBox(height: 10),
              Text(AllTexts.receiverName, style: TextStyles.profileNameStyle),
              const SizedBox(height: 5),
              Text(
                AllTexts.connecting,
                style: TextStyles.onboardDesStyle
                    .copyWith(color: AllColors.callerSubGrey),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // mic off button
                  LeftRightButton(image: AllImages.micOffIcon),
                  // call button
                  CallButton(),
                  LeftRightButton(image: AllImages.speakerIcon)
                ]
              )
            ],
          ),
        ),
      ),
    );
  }
}
