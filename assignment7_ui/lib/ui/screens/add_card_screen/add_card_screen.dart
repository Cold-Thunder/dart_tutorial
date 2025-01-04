import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/images/all_images.dart';
import 'package:assignment7_ui/config/utiles/texts/all_texts.dart';
import 'package:assignment7_ui/ui/screens/add_card_screen/widgets/add_card_title.dart';
import 'package:assignment7_ui/ui/widgets/app_bar_title_widget.dart';
import 'package:assignment7_ui/ui/widgets/auth_type_widgets/text_input_field.dart';
import 'package:assignment7_ui/ui/widgets/back_icon.dart';
import 'package:assignment7_ui/ui/widgets/elevated_button_design.dart';
import 'package:flutter/material.dart';

class AddCardScreen extends StatelessWidget {
  AddCardScreen({super.key});
  final TextEditingController _holderNameCont = TextEditingController();
  final TextEditingController _cardNumCont = TextEditingController();
  final TextEditingController _cardExpCont = TextEditingController();
  final TextEditingController _cardCvcCont = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitleWidget(title: AllTexts.addCard),
        leading: BackIcon(color:AllColors.backIconGrey, iconPng: AllImages.closeIcon,)
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(10),
        height: 80,
        child: ElevatedButtonDesign(title: AllTexts.addAndMakePayment)
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                AddCardTitle(title: AllTexts.cardHolder),
                const SizedBox(height: 10),
                TextInputField(controller: _holderNameCont, hintText: AllTexts.cardHolderName),
              const SizedBox(height: 20),

              AddCardTitle(title: AllTexts.cardNumber),
              const SizedBox(height: 10),
               TextInputField(controller: _cardNumCont, hintText: AllTexts.cardNumberHint),
              const SizedBox(height: 20),
              SizedBox(
                width: width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: width*0.42,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AddCardTitle(title: AllTexts.expireDate),
                          const SizedBox(height: 10),
                          TextInputField(controller: _cardExpCont, hintText: AllTexts.mmYY),

                        ],
                      ),
                    ),
                    SizedBox(
                      width: width*0.42,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AddCardTitle(title: AllTexts.cvc),
                          const SizedBox(height: 10),
                          TextInputField(controller: _cardCvcCont, hintText: AllTexts.cvcPoint),
                        ],
                      ),
                    )
                  ]
                ),
              )
            ]
          )
        )
      )
    );
  }
}
