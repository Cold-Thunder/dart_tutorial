import 'package:assignment7_ui/screens/home_v1.dart';
import 'package:assignment7_ui/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/utiles/texts/auth_type_texts.dart';
import 'package:assignment7_ui/widgets/auth_type_widgets/auth_type_des.dart';
import 'package:assignment7_ui/widgets/elevated_button_design.dart';
import 'package:assignment7_ui/widgets/grey_card.dart';
import 'package:flutter/material.dart';

class LocationAccessScreen extends StatelessWidget {
  const LocationAccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        height: height,
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              GreyCard(height: 250, width: 206, borderRad: 90),
            SizedBox(height: 50),
            ElevatedButtonDesign(title: AuthTypeTexts.access, screen: HomeV1(), icon: true,),
            const SizedBox(height: 20,),
            Text(
                AuthTypeTexts.accessDes,
                style: TextStyles.onboardDesStyle,
              textAlign: TextAlign.center,
            )
          ]
        )
      )
    );
  }
}
