import 'package:flutter/material.dart';
import 'package:grocery_app_ui/config/utiles/styles/text_styles.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Text('adadadad', style: AllTextStyles.onboardHeadingStyle)
            ],
          )
        ),
      )
    );
  }
}
