import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/config/utiles/texts/all_texts.dart';
import 'package:flutter/material.dart';

class DeliveryToSection extends StatefulWidget {
  const DeliveryToSection({super.key});

  @override
  State<DeliveryToSection> createState() => _DeliveryToSectionState();
}

class _DeliveryToSectionState extends State<DeliveryToSection> {
  String location = AllTexts.halal;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
      Text(AllTexts.delivery, style: TextStyles.homeAppBarTitle),
      // dropdown section
      SizedBox(
        height: 15,
        child: DropdownButton(
          iconEnabledColor: AllColors.black,
          value: location,
          underline: const SizedBox(),
          style: TextStyles.dropDownTextStyle,
          onChanged: (value) {
            setState(() {
              location = value.toString();
            });
          },
          items: [
            DropdownMenuItem(
              value: AllTexts.home,
              child: Text(
                AllTexts.home,
                style: TextStyles.dropDownTextStyle,
              ),
            ),
            DropdownMenuItem(
              value: AllTexts.halal,
              child: Text(
                AllTexts.halal,
                style: TextStyles.dropDownTextStyle,
              ),
            ),
          ],
        ),
      )
    ]));
  }
}
