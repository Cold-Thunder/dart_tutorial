import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/images/all_images.dart';
import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/config/utiles/texts/all_texts.dart';
import 'package:assignment7_ui/ui/screens/tracking_order_screen/widgets/bottom_sheet_check_row.dart';
import 'package:assignment7_ui/ui/screens/tracking_order_screen/widgets/check_button.dart';
import 'package:assignment7_ui/ui/screens/tracking_order_screen/widgets/vertical_divider_widget.dart';
import 'package:flutter/material.dart';

class BottomSheetMiddleSection extends StatelessWidget {
  const BottomSheetMiddleSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: SizedBox(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            BottomSheetCheckRow(
                iconSvg: AllImages.checkIcon,
                color: AllColors.buttonOrange,
                textColor: AllColors.buttonOrange,
                title: AllTexts.orderReceive),
            VerticalDividerWidget(color: AllColors.buttonOrange),
            BottomSheetCheckRow(
                iconSvg: AllImages.loadingIcon,
                color: AllColors.buttonOrange,
                textColor: AllColors.hintTextGrey,
                title: AllTexts.preparingFood),
            VerticalDividerWidget(color: AllColors.hintTextGrey),
            BottomSheetCheckRow(
                iconSvg: AllImages.checkIcon,
                color: AllColors.hintTextGrey,
                textColor: AllColors.hintTextGrey,
                title: AllTexts.orderPickingUp),
            VerticalDividerWidget(color: AllColors.hintTextGrey),
            BottomSheetCheckRow(
                iconSvg: AllImages.checkIcon,
                color: AllColors.hintTextGrey,
                textColor: AllColors.hintTextGrey,
                title: AllTexts.orderArriving),
          ]
        )
      ),
    );
  }
}
