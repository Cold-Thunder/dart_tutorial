import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app_ui/core/components/elevated_button_design.dart';
import 'package:grocery_app_ui/core/utiles/all_colors.dart';
import 'package:grocery_app_ui/core/utiles/all_images.dart';
import 'package:grocery_app_ui/core/utiles/all_texts.dart';
import 'package:grocery_app_ui/core/utiles/styles/all_text_styles.dart';
import 'package:grocery_app_ui/features/home_screen/widgets/address_select_button.dart';

class AddressBottomSheet extends StatefulWidget {
  final List<Map<String, dynamic>> address;
  final Function addressChangeMethod;
  final Map<String, dynamic> groupVal;

  const AddressBottomSheet(
      {required this.address,
      required this.addressChangeMethod,
      required this.groupVal,
      super.key});

  @override
  State<AddressBottomSheet> createState() => _AddressBottomSheetState();
}

class _AddressBottomSheetState extends State<AddressBottomSheet> {
  FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    Future.delayed(Duration(milliseconds: 100), () {
      FocusScope.of(context).requestFocus(_focusNode);
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      width: width,
      height: 440,
      decoration: BoxDecoration(
        color: AllColors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
      ),
      child: Column(
        spacing: 12,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            height: 5,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AllColors.barGrey),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(AllTexts.selectAnAddress,
                  style: AllTextStyles.searchScreenHeading),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: SvgPicture.asset(
                  AllImages.closeIcon,
                  height: 24,
                  width: 24,
                ),
              ),
            ],
          ),
          Divider(
            height: 1,
            color: AllColors.barGrey,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: widget.address.length,
                    itemBuilder: (context, index) {
                      return AddressSelectButton(
                        address: widget.address[index],
                        groupVal: widget.groupVal,
                        onChangedMethod:
                          widget.addressChangeMethod,
                        focusNode: index == 0 ? _focusNode : null,
                      );
                    },
                  )
                ],
              ),
            ),
          ),
          ElevatedButtonDesign(
              title: AllTexts.addNewAddress,
            iconSvg: AllImages.addIcon,
          ),
          const SizedBox(
            height: 0
          )
        ],
      ),
    );
  }
}
