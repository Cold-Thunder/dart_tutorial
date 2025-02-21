import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app_ui/core/utiles/all_colors.dart';
import 'package:grocery_app_ui/features/home_screen/widgets/address_bottom_sheet.dart';
import '../../../core/utiles/all_images.dart';
import '../../../core/utiles/all_texts.dart';
import '../../../core/utiles/styles/all_text_styles.dart';

class HomeDropdownButton extends StatefulWidget {
  final String address;
  final Function func;
  const HomeDropdownButton({required this.address, required this.func, super.key});

  @override
  State<HomeDropdownButton> createState() => _HomeDropdownButtonState();
}

class _HomeDropdownButtonState extends State<HomeDropdownButton> {

  Map<String, dynamic> address = {
    'addressTitle': AllTexts.home,
    'address': AllTexts.homeAddress
  };

  List<Map<String,dynamic>> allAddresses = [
    {
      'addressTitle': AllTexts.home,
      'address': AllTexts.homeAddress
    },
    {
      'addressTitle': AllTexts.office,
      'address': AllTexts.officeAddress
    }
  ];

  void addressChanger(Map<String, dynamic> newAddress ){
      setState(() {
        address = newAddress;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: (){
            showModalBottomSheet(
                context: context,
                barrierColor: AllColors.transparent65,
                barrierLabel: 'address select',
                builder:(context){
                  return AddressBottomSheet(
                    address: allAddresses,
                    addressChangeMethod: addressChanger,
                    groupVal: address,
                  );
                }
            );
          },
          splashColor: AllColors.transparent,
          highlightColor: AllColors.transparent,
          child: Row(
            children: [
              Text(address['addressTitle'], style: AllTextStyles.searchScreenHeading),
              Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: SvgPicture.asset(AllImages.arrowDownSvg)
              )
            ],
          ),
        ),
        Text(address['address'], style: AllTextStyles.dropDownMenuStyle),
      ],
    );
  }
}
