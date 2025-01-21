import 'package:flutter/material.dart';
import 'package:widgets_use/config/utiles/styles/all_colors.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AllColors.italyGreen,
      body: SingleChildScrollView(
        child: SizedBox(
          width: width,
          child: Column(
            children: [
              Text('Message Page', style: TextStyle(
                  fontSize: 30,
                  color: AllColors.white
              ),),
            ],
          ),
        ),
      ) ,
    );
  }
}
