import 'package:flutter/material.dart';
import 'package:widgets_use/config/utiles/styles/all_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AllColors.greyBlue,
      body: SingleChildScrollView(
        child: SizedBox(
          width: width,
          child: Column(
            spacing: 20,
            children: [
              Text(
                'Home Page',
                style: TextStyle(fontSize: 30, color: AllColors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
