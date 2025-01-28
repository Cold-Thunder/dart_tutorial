import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/config/utiles/texts/all_texts.dart';
import 'package:assignment7_ui/ui/screens/my_address_screen/my_address_screen.dart';
import 'package:assignment7_ui/ui/screens/payment_screen/payment_screen.dart';
import 'package:assignment7_ui/ui/widgets/elevated_button_design.dart';
import 'package:assignment7_ui/ui/widgets/grey_card.dart';
import 'package:flutter/material.dart';

class EditCartBottomSection extends StatefulWidget {
  final double totalPrice;

  const EditCartBottomSection({required this.totalPrice, super.key});

  @override
  State<EditCartBottomSection> createState() => _EditCartBottomSectionState();
}

class _EditCartBottomSectionState extends State<EditCartBottomSection> {

  late String newAddress = AllTexts.addressHint;


  changeAddress(String address){
    setState(() {
      newAddress = address;
    });
  }


  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 20, top: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: GreyCard(height: 5, width: 55),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(AllTexts.deliveryAdd, style: TextStyles.hintTextStyle),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyAddressScreen(addressChange: changeAddress),
                    ),
                  );
                },
                child: Text(AllTexts.edit, style: TextStyles.cartEditTextStyle),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.all(10),
            height: 62,
            width: width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AllColors.inputFieldWhite),
            child: Text(newAddress, style: TextStyles.hintTextStyle),
          ),
          Expanded(
            child: Row(spacing: 10, children: [
              Text("${AllTexts.total}:", style: TextStyles.hintTextStyle),
              Text(
                "\$${widget.totalPrice}",
                style: TextStyles.appBarTitleStyle.copyWith(fontSize: 30),
              ),
            ]),
          ),
          ElevatedButtonDesign(
            title: AllTexts.placeOrder,
            screen: PaymentScreen(),
          ),
        ],
      ),
    );
  }
}
