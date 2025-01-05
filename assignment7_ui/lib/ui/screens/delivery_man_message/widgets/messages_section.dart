import 'package:assignment7_ui/config/models/delivery_man_message.dart';
import 'package:assignment7_ui/config/utiles/texts/all_texts.dart';
import 'package:assignment7_ui/ui/screens/delivery_man_message/widgets/message_reciever_widget.dart';
import 'package:assignment7_ui/ui/screens/delivery_man_message/widgets/message_sender_widget.dart';
import 'package:flutter/material.dart';

class MessagesSection extends StatelessWidget {
  MessagesSection({super.key});

  final List<DeliveryManMessageModel> messages = AllTexts.messages;


  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width,
      child: ListView.builder(
        shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: messages.length,
          itemBuilder: (context, index){
            if(messages[index].sender == true){
              return MessageSenderWidget(model: messages[index]);
            }else{
              return MessageRecieverWidget(model: messages[index]);
            }
          }
      )
    );
  }
}
