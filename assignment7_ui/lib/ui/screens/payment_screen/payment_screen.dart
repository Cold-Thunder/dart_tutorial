import 'package:assignment7_ui/config/models/small_card_modal.dart';
import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/images/all_images.dart';
import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/config/utiles/texts/all_texts.dart';
import 'package:assignment7_ui/ui/screens/add_card_screen/add_card_screen.dart';
import 'package:assignment7_ui/ui/screens/payment_screen/widgets/cards_widgets.dart';
import 'package:assignment7_ui/ui/screens/payment_success_screen/payment_success_screen.dart';
import 'package:assignment7_ui/ui/widgets/app_bar_title_widget.dart';
import 'package:assignment7_ui/ui/widgets/back_icon.dart';
import 'package:assignment7_ui/ui/widgets/elevated_button_design.dart';
import 'package:assignment7_ui/ui/widgets/outline_button_design.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  final double? price;
  const PaymentScreen ({this.price, super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  bool cashCheck = true;
  bool visaCheck = false;
  bool masterCheck = false;
  bool paypalCheck = false;

  late List<SmallCardModal> cards =[
    SmallCardModal(id: 0, image: AllImages.cashLogo, title: AllTexts.cash, ),
    SmallCardModal(id: 1, image: AllImages.visaLogo, title: AllTexts.visa, ),
    SmallCardModal(id: 2, image: AllImages.masterCard, title: AllTexts.master, ),
    SmallCardModal(id: 3, image: AllImages.paypalLogo, title: AllTexts.paypal, ),
  ];

  late List<bool> selected = [true, false, false, false];

  void checkingMethod(int index){
      debugPrint(index.toString());
      setState(() {
        for(int ind =0; ind < selected.length; ind++){
          if(ind != index){
            selected[ind] = false;
          }else{
            selected[ind] = true;
          }
        }
      });
  }



  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AllColors.appbarWhite,
      appBar: AppBar(
        title: AppBarTitleWidget(title: AllTexts.payment),
        leading: BackIcon(color: AllColors.backIconGrey)
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        height: 150,
        decoration: BoxDecoration(
          color: AllColors.appbarWhite
        ),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              height: 65,
              child: Row(
                spacing: 15,
                  children: [
                    Text("${AllTexts.total}:", style: TextStyles.hintTextStyle),
                    Text("${AllTexts.dollar}${widget.price??0}", style: TextStyles.appBarTitleStyle.copyWith(
                      fontSize: 30
                    ),)
                  ]
              )
            ),
            SizedBox(
              height: 62,
                child: ElevatedButtonDesign(title: AllTexts.payAndConfirm, screen: PaymentSuccessScreen(),),
            )
          ]
        )
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 15),
              child: SizedBox(
                height: 105,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: cards.length,
                  itemBuilder: (context, index){
                    return CardsWidget(modal:cards[index], func: checkingMethod, selected: selected[index],);
                  }
                ),
              ),
            ),
            const SizedBox(height: 20),
            // master card
            Container(
              height: 257,
              width: width*0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: AllColors.masterCardGrey
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  SizedBox(
                      width: 168,
                      height: 106,
                      child: Image.asset(AllImages.masterCard, height: 106, width: 168)
                  ),
                  const SizedBox(height: 25),
                  Text(
                    AllTexts.masterCardHeading,
                    style: TextStyles.pinTextStyle
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    width: 220,
                    child: Text(
                      AllTexts.masterCardDes,
                      style: TextStyles.masterCardDesTextStyle,
                      textAlign: TextAlign.center
                    ),
                  )
                ]
              )
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              height: 62,
                width: width,
                child: OutlineButtonDesign(title: AllTexts.addNew, screen: AddCardScreen(), color:AllColors.inputFieldWhite)
            )
          ]
        )
      )
    );
  }
}
