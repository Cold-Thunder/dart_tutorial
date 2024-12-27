import 'package:assignment7_ui/utiles/all_colors.dart';
import 'package:assignment7_ui/utiles/texts/my_address_texts.dart';
import 'package:assignment7_ui/widgets/app_bar_title_widget.dart';
import 'package:assignment7_ui/widgets/back_icon.dart';
import 'package:assignment7_ui/widgets/my_address_widgets/my_address_widget_tile.dart';
import 'package:flutter/material.dart';

class MyAddressScreen extends StatelessWidget {
  const MyAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitleWidget(title: MyAddressText.appBarTitle),
        leading: BackIcon(color: AllColors.backIconGrey)
      ),
      body: SingleChildScrollView(
        child: Container(
          width: width,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              MyAddressWidgetTile()
            ],
          )
        )
      )
    );
  }
}
