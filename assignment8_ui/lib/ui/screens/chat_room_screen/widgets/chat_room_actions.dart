import 'package:assignment8_ui/config/all_colors.dart';
import 'package:flutter/material.dart';

class ChatRoomActions extends StatelessWidget {
  const ChatRoomActions({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      splashColor: AllColors.transparent,
      highlightColor: AllColors.transparent,
      child: Container(
        alignment: Alignment.center,
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 1,
            color: AllColors.borderOutlineGrey
          )
        ),
        child: Stack(
          children: [
            Icon(Icons.notifications_none,size: 25, color: AllColors.headingBlack),
            Positioned(
              right: 3,
              top: 3,
              child: Container(
                height: 7,
                width: 7,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AllColors.mainGreen
                )
              )
            )
          ],
        )
      ),
    );
  }
}
