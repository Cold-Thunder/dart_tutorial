import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/config/utiles/all_texts.dart';
import 'package:assignment7_ui/ui/screens/tracking_order_screen/track_order_screen.dart';
import 'package:assignment7_ui/ui/widgets/elevated_button_design.dart';
import 'package:assignment7_ui/ui/widgets/grey_card.dart';
import 'package:flutter/material.dart';

class PaymentSuccessScreen extends StatelessWidget {
  const PaymentSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar:
      Container(
          padding: const EdgeInsets.only(left: 15, right: 15, bottom:15),
          child: ElevatedButtonDesign(title: AllTexts.trackOrder, screen: TrackOrderScreen(),)
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SizedBox(
          width: width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GreyCard(height: 207, width: 228, borderRad: 32,),
              const SizedBox(height: 30),
              Text(
                  AllTexts.paymentSuccessHeading,
                  style: TextStyles.paySuccessHeadStyle),
              const SizedBox(height: 20,),
              Text(
                AllTexts.paySuccessDes,
                style: TextStyles.dropDownTextStyle.copyWith(
                  color: AllColors.paySuccessDesGrey
                ),
                textAlign: TextAlign.center
              )
            ],
          ),
        ),
      )
    );
  }
}
