import 'package:assignment8_ui/config/all_colors.dart';

import 'package:assignment8_ui/config/models/chat_users_model.dart';
import 'package:assignment8_ui/config/styles/text_styles.dart';
import 'package:assignment8_ui/ui/screens/message_screen/messages_screen.dart';
import 'package:flutter/material.dart';

class UserListTileWidget extends StatelessWidget {
  final ChatUsersModel model;
  const UserListTileWidget({required this.model, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context,
          MaterialPageRoute(builder: (context)=>MessagesScreen())
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Row(
          children: [
            // leading
            Stack(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(model.image),
                            fit: BoxFit.fill
                        )
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      right: 7,
                      child: Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: model.active ? AllColors.mainGreen : AllColors.offLineRed
                          )
                      )
                  )
                ]
            ),
            const SizedBox(width: 10),
            // title section
            SizedBox(
              height: 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      model.name,
                      style: TextStyles.smallHeadingTextStyle.copyWith(
                        fontSize: 18,
                      )
                  ),
                  Text(
                      model.message,
                      style: TextStyles.userMessageTextStyle
                  )
                ],
              ),
            ),
            Spacer(),
            // trailing section
            SizedBox(
              height: 50,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                        model.time,
                        style: TextStyles.userMessageTextStyle
                    ),
                    Visibility(
                        visible: model.msgCount != 0,
                        child: Container(
                            alignment: Alignment.center,
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                color: AllColors.mainGreen,
                                shape: BoxShape.circle
                            ),
                            child: Text(model.msgCount.toString(), style: TextStyles.msgCountTextStyle)
                        )
                    )
                  ]
              ),
            ),
          ],
        )
      ),
    );
  }
}
