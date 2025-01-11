import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/images/all_images.dart';
import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/config/utiles/texts/all_texts.dart';
import 'package:assignment7_ui/ui/screens/delivery_man_call_screen/delivery_man_call_screen.dart';
import 'package:assignment7_ui/ui/screens/delivery_man_message/delivery_man_message_screen.dart';
import 'package:assignment7_ui/ui/screens/tracking_order_screen/widgets/circle_buttons.dart';
import 'package:assignment7_ui/ui/widgets/grey_card.dart';
import 'package:flutter/material.dart';

class BottomSheetBottomSection extends StatelessWidget {
  const BottomSheetBottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 116,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(22),
          topLeft: Radius.circular(22)
        ),
        border: Border.all(
          width: 1,
          color: AllColors.bottomSheetBottomBorderGrey
        )
      ),
      child: Row(
        children: [
          GreyCard(height: 54, width: 54),
          const SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Text(
                AllTexts.userName,
                style: TextStyles.profileNameStyle
              ),
              Text(
                AllTexts.courier,
                style: TextStyles.hintTextStyle
              )
            ]
          ),
          Spacer(),
          CircleButtons(
            icon: AllImages.callIcon,
            color: AllColors.buttonOrange,
            screen: DeliveryManCallScreen(),
            showShadow: true,
          ),
          const SizedBox(width: 15),
          CircleButtons(
            icon: AllImages.messageIcon,
            color: AllColors.appbarWhite,
            screen: DeliveryManMessageScreen(),
            showShadow: false,
          ),
        ]
      )
    );
  }
}
