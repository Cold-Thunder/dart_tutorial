import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/all_images.dart';
import 'package:assignment7_ui/config/utiles/all_texts.dart';
import 'package:assignment7_ui/ui/screens/delivery_man_message/widgets/message_input_field.dart';
import 'package:assignment7_ui/ui/screens/delivery_man_message/widgets/message_sender_widget.dart';
import 'package:assignment7_ui/ui/screens/delivery_man_message/widgets/messages_section.dart';
import 'package:assignment7_ui/ui/widgets/app_bar_title_widget.dart';
import 'package:assignment7_ui/ui/widgets/back_icon.dart';
import 'package:flutter/material.dart';

class DeliveryManMessageScreen extends StatelessWidget {
  DeliveryManMessageScreen({super.key});
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: AppBarTitleWidget(title: AllTexts.robertFox),
          leading: BackIcon(color: AllColors.backIconGrey, iconPng: AllImages.closeIcon,)
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: SizedBox(
            width: width,
            child: Column(
              children: [
                 Expanded(
                   child: SingleChildScrollView(
                       child: MessagesSection(),
                   ),
                 ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom, // Add keyboard height padding
                  ),
                  child: SizedBox(
                    height: 75,
                    child: MessageInputField(controller: _controller),
                  ),
                ),
              ]
            ),
          ),
        )
      ),
    );
  }
}
