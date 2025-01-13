import 'package:assignment8_ui/config/all_texts.dart';
import 'package:assignment8_ui/config/styles/text_styles.dart';
import 'package:assignment8_ui/ui/screens/chat_room_screen/widgets/chat_room_actions.dart';
import 'package:assignment8_ui/ui/screens/chat_room_screen/widgets/chat_room_bar_leading.dart';
import 'package:assignment8_ui/ui/screens/chat_room_screen/widgets/search_field.dart';
import 'package:flutter/material.dart';

class ChatRoomScreen extends StatelessWidget {
  const ChatRoomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ChatRoomBarLeading(),
        title: Text(
          AllTexts.chatRoom.toUpperCase(),
          style: TextStyles.headingTextStyle.copyWith(
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        actions: [
          ChatRoomActions(),
          const SizedBox(width: 15)
        ]
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SearchField()
            ]
          ),
        )
      )
    );
  }
}
