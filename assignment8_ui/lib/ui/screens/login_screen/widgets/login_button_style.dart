import 'package:assignment8_ui/config/all_colors.dart';
import 'package:assignment8_ui/config/all_texts.dart';
import 'package:assignment8_ui/config/styles/text_styles.dart';
import 'package:assignment8_ui/ui/screens/chat_room_screen/chat_room_screen.dart';
import 'package:flutter/material.dart';

class LoginButtonStyle extends StatelessWidget {
  const LoginButtonStyle({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 60,
      width: width,
      child: ElevatedButton(
          onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ChatRoomScreen()));
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: AllColors.mainGreen,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            )
          ),
          child: Text(
            AllTexts.login,
            style: TextStyles.loginButtonTextStyle
          )
      ),
    );
  }
}
