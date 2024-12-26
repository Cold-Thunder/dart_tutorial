import 'package:assignment7_ui/utiles/all_colors.dart';
import 'package:assignment7_ui/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/utiles/texts/payment_success_text.dart';
import 'package:assignment7_ui/widgets/elevated_button_design.dart';
import 'package:assignment7_ui/widgets/grey_card.dart';
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
          child: ElevatedButtonDesign(title: PaymentSuccessText.trackOrder)
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
                  PaymentSuccessText.paymentSuccessHeading,
                  style: TextStyles.paySuccessHeadStyle),
              const SizedBox(height: 20,),
              Text(
                PaymentSuccessText.paySuccessDes,
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
