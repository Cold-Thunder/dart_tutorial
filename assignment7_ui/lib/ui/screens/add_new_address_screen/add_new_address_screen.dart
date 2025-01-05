import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/images/all_images.dart';
import 'package:assignment7_ui/config/utiles/texts/all_texts.dart';
import 'package:assignment7_ui/ui/screens/add_new_address_screen/widgets/label_buttons.dart';
import 'package:assignment7_ui/ui/screens/add_new_address_screen/widgets/left_right_input.dart';
import 'package:assignment7_ui/ui/screens/add_new_address_screen/widgets/title_section.dart';
import 'package:assignment7_ui/ui/screens/delivery_man_message/delivery_man_message_screen.dart';
import 'package:assignment7_ui/ui/widgets/auth_type_widgets/text_input_field.dart';
import 'package:assignment7_ui/ui/widgets/back_icon.dart';
import 'package:assignment7_ui/ui/widgets/elevated_button_design.dart';
import 'package:flutter/material.dart';

class AddNewAddressScreen extends StatefulWidget {
  const AddNewAddressScreen({super.key});

  @override
  State<AddNewAddressScreen> createState() => _AddNewAddressScreenState();
}

class _AddNewAddressScreenState extends State<AddNewAddressScreen> {
  final TextEditingController _addressCont = TextEditingController();
  final TextEditingController _streetCont = TextEditingController();
  final TextEditingController _postCodeCont = TextEditingController();
  final TextEditingController _apartmentCont = TextEditingController();

  List<String> labels = AllTexts.labelBtnTexts;
  List<bool> selected = [true, false, false];

  selectedChange(int ind) {
    setState(() {
      for (int i = 0; i < selected.length; i++) {
        if (i == ind) {
          selected[i] = true;
        } else {
          selected[i] = false;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(bottom: 10, left: 15, right: 15),
        height: 65,
        child: ElevatedButtonDesign(title: AllTexts.saveLocation, screen: DeliveryManMessageScreen())
      ),
        body: SingleChildScrollView(
          child: SizedBox(
              width: width,
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                // top section
                Stack(children: [
                  Container(
                      height: 295,
                      width: width,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage(AllImages.mapImg),
                        fit: BoxFit.fill,
                      ))),
                  Positioned(
                    top: 30,
                    child: BackIcon(
                        iconPng: AllImages.backWhiteIcon, color: AllColors.black),
                  )
                ]),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 10,
                    children: [
                      TitleSection(title: AllTexts.address),
                      TextInputField(
                        controller: _addressCont,
                        hintText: AllTexts.addressHint,
                        prefixIconSvg: AllImages.greyLocationIcon,
                      ),
                      // street and post code section
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          LeftRightInput(
                              title: AllTexts.street,
                              hintText: AllTexts.streetHint,
                              controller: _streetCont),
                          LeftRightInput(
                              title: AllTexts.postCode,
                              hintText: AllTexts.postCodeHint,
                              controller: _postCodeCont)
                        ],
                      ),
                      TitleSection(title: AllTexts.apartment),
                      TextInputField(
                          controller: _apartmentCont,
                          hintText: AllTexts.apartmentHint),
                      TitleSection(title: AllTexts.labelAs),
                      SizedBox(
                          height: 45,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: labels.length,
                              itemBuilder: (context, index) {
                                return LabelButtons(
                                  title: labels[index],
                                  selected: selected[index],
                                  ind: index,
                                  selectFunc: selectedChange,
                                );
                              }))
                    ],
                  ),
                ),
              ])),
        ));
  }
}
