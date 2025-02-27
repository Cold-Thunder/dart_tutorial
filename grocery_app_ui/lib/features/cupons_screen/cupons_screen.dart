import 'package:flutter/material.dart';
import 'package:grocery_app_ui/core/utiles/all_texts.dart';

class CuponsScreen extends StatelessWidget {
  const CuponsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AllTexts.couponsTitle)
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

          ],
        ),
      )
    );
  }
}
