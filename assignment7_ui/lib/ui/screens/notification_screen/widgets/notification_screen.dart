import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/all_texts.dart';
import 'package:assignment7_ui/ui/widgets/app_bar_title_widget.dart';
import 'package:assignment7_ui/ui/widgets/back_icon.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: BackIcon(color: AllColors.backIconGrey),
        title: AppBarTitleWidget(title: AllTexts.notifications),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: SizedBox(
            width: size.width,
            child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index){
              return SizedBox();
            })
          )
        ),
      )
    );
  }
}
