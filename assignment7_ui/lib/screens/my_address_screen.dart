import 'package:assignment7_ui/models/my_address_model.dart';
import 'package:assignment7_ui/utiles/all_colors.dart';
import 'package:assignment7_ui/utiles/images/all_images.dart';
import 'package:assignment7_ui/utiles/texts/my_address_texts.dart';
import 'package:assignment7_ui/widgets/app_bar_title_widget.dart';
import 'package:assignment7_ui/widgets/back_icon.dart';
import 'package:assignment7_ui/widgets/elevated_button_design.dart';
import 'package:assignment7_ui/widgets/my_address_widgets/my_address_widget_tile.dart';
import 'package:flutter/material.dart';

class MyAddressScreen extends StatelessWidget {
  MyAddressScreen({super.key});

  final List<MyAddressModel> address = [
    MyAddressModel(title: MyAddressText.home, address: MyAddressText.homeAdd, icon: AllImages.home),
    MyAddressModel(title: MyAddressText.work, address: MyAddressText.workAdd, icon: AllImages.work),
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitleWidget(title: MyAddressText.appBarTitle),
        leading: BackIcon(color: AllColors.backIconGrey)
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
        // height: 65,
        child: ElevatedButtonDesign(title: MyAddressText.addNewAddress)
      ),
      body: SingleChildScrollView(
        child: Container(
          width: width,
          padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
          child: Column(
            spacing: 20,
            children: address.map((item)=> MyAddressWidgetTile(model: item)).toList(),
          )
        )
      )
    );
  }
}
