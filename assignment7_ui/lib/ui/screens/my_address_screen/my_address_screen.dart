import 'package:assignment7_ui/config/models/my_address_model.dart';
import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/all_images.dart';
import 'package:assignment7_ui/config/utiles/all_texts.dart';
import 'package:assignment7_ui/ui/screens/add_new_address_screen/add_new_address_screen.dart';
import 'package:assignment7_ui/ui/widgets/app_bar_title_widget.dart';
import 'package:assignment7_ui/ui/widgets/back_icon.dart';
import 'package:assignment7_ui/ui/widgets/elevated_button_design.dart';
import 'package:assignment7_ui/ui/screens/my_address_screen/widgets/my_address_widget_tile.dart';
import 'package:flutter/material.dart';

class MyAddressScreen extends StatelessWidget {
  final Function? addressChange;
  MyAddressScreen({this.addressChange, super.key});

  final List<MyAddressModel> address = [
    MyAddressModel(title: AllTexts.home, address: AllTexts.homeAdd, icon: AllImages.home),
    MyAddressModel(title: AllTexts.work, address: AllTexts.workAdd, icon: AllImages.work),
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitleWidget(title: AllTexts.appBarTitle),
        leading: BackIcon(color: AllColors.backIconGrey)
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
        // height: 65,
        child: ElevatedButtonDesign(title: AllTexts.addNewAddress, screen: AddNewAddressScreen(),)
      ),
      body: SingleChildScrollView(
        child: Container(
          width: width,
          padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
          child: Column(
            spacing: 20,
            children: address.map((item)=> MyAddressWidgetTile(model: item, addressChange: addressChange,)).toList(),
          ),
        ),
      ),
    );
  }
}
