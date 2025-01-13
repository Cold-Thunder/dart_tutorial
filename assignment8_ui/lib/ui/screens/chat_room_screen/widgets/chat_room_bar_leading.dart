import 'package:assignment8_ui/config/all_colors.dart';
import 'package:flutter/material.dart';

class ChatRoomBarLeading extends StatelessWidget {
  const ChatRoomBarLeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15),
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AllColors.mainGreen,
        ),
        child: Icon(Icons.person, color: AllColors.appBarWhite, size: 25)
    );
  }
}
