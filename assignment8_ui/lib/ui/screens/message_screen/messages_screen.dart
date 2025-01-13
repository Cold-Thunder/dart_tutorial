import 'package:assignment8_ui/config/all_colors.dart';
import 'package:assignment8_ui/config/all_texts.dart';
import 'package:assignment8_ui/config/images/all_images.dart';
import 'package:assignment8_ui/config/models/message_model.dart';
import 'package:assignment8_ui/config/styles/text_styles.dart';
import 'package:assignment8_ui/ui/screens/message_screen/widgets/appbar_button.dart';
import 'package:assignment8_ui/ui/screens/message_screen/widgets/message_writing_field.dart';
import 'package:assignment8_ui/ui/screens/message_screen/widgets/receiver_message.dart';
import 'package:assignment8_ui/ui/screens/message_screen/widgets/sender_message.dart';
import 'package:assignment8_ui/ui/screens/message_screen/widgets/today_label.dart';
import 'package:flutter/material.dart';

class MessagesScreen extends StatelessWidget {
  MessagesScreen({super.key});
  final TextEditingController _controller = TextEditingController();

  List<MessageModel> messages = AllTexts.messages;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
            leading: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: AppbarButton(
                  iconData: Icons.arrow_back,
                func: (){
                    Navigator.pop(context);
                },
              ),
            ),
          // title section
          title: Column(
            spacing: 5,
            children: [
              Stack(
                children: [
                  SizedBox(
                      height: 40,
                      width: 40,
                      child: Image.asset(
                          AllImages.profileImage,
                          height: 40,
                          width: 40,
                          fit: BoxFit.fill
                      )
                  ),
                  Positioned(
                    bottom: 5,
                    right: 0,
                    child: Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                          color: AllColors.mainGreen
                      ),
                    )
                  )
                ]
              ),
              Text(AllTexts.userName, style: TextStyles.smallHeadingTextStyle.copyWith(
                fontSize: 16,
              ),),
            ]
          ),
          centerTitle: true,
          actions: [
            AppbarButton(
                iconData: Icons.more_vert
            ),
            const SizedBox(width: 15)
          ],
          bottom: PreferredSize(
              preferredSize:Size.fromHeight(1),
              child: Divider(height: 1, color: AllColors.borderOutlineGrey)
          )
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SizedBox(
          height: height,
          child: Column(
            children: [
              Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: messages.length,
                    itemBuilder: (context, index){
                      return messages[index].receiver
                          ? ReceiverMessage(model: messages[index])
                          : SenderMessage(model: messages[index]);
                    }
                  )
              ),

                Padding(
                  padding:EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom
                  ),
                  child: MessageWritingField(controller: _controller,)
                )
            ]
          ),
        )
      )
    );
  }
}
