import 'package:assignment8_ui/config/all_colors.dart';
import 'package:assignment8_ui/config/all_texts.dart';
import 'package:assignment8_ui/config/models/active_user_model.dart';
import 'package:assignment8_ui/config/models/chat_users_model.dart';
import 'package:assignment8_ui/config/styles/text_styles.dart';
import 'package:assignment8_ui/ui/screens/chat_room_screen/widgets/chat_room_actions.dart';
import 'package:assignment8_ui/ui/screens/chat_room_screen/widgets/chat_room_bar_leading.dart';
import 'package:assignment8_ui/ui/screens/chat_room_screen/widgets/circle_card.dart';
import 'package:assignment8_ui/ui/screens/chat_room_screen/widgets/search_field.dart';
import 'package:assignment8_ui/ui/screens/chat_room_screen/widgets/user_list_tile_widget.dart';
import 'package:flutter/material.dart';

class ChatRoomScreen extends StatelessWidget {
  ChatRoomScreen({super.key});

  final List<ActiveUserModel> activeUsers = AllTexts.activeUsers;
  final List<ChatUsersModel> chatUsers = AllTexts.chatUsers;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
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
        child: Column(
          children: [
            const SizedBox(height: 10),
            SearchField(),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: SizedBox(
                height: 50,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: activeUsers.length,
                  separatorBuilder: (context, ind){
                    return SizedBox(width: 10);
                  },
                  itemBuilder: (context,index){
                    return CircleCard(model: activeUsers[index]);
                  }
                ),
              ),
            ),
            const SizedBox(height: 15),
            Divider(
              height: 1,
                color: AllColors.borderOutlineGrey,
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: ListView.separated(
                  separatorBuilder: (context, ind){
                    return SizedBox(
                      width: width*0.9,
                      child: Divider(
                        height: 1,
                        color: AllColors.borderOutlineGrey
                      ),
                    );
                  },
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: chatUsers.length,
                  itemBuilder: (context, index){
                    return UserListTileWidget(model: chatUsers[index]);
                  }
              ),
            )
          ]
        )
      )
    );
  }
}
