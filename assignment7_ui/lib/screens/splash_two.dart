import 'dart:async';

import 'package:assignment7_ui/screens/onboarding_screen.dart';
import 'package:assignment7_ui/utiles/images/all_images.dart';
import 'package:flutter/material.dart';

class SplashTwo extends StatefulWidget {
  const SplashTwo({super.key});

  @override
  State<SplashTwo> createState() => _SplashTwoState();
}

class _SplashTwoState extends State<SplashTwo> {

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 2), (){
      Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context)=>OnboardingScreen())
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SizedBox(
        height: height,
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: width,
              alignment: Alignment.topLeft,
              child: Image.asset(AllImages.splashTopFlow),
            ),
            Image.asset(AllImages.logo, height: 59, width: 121.13),
            Container(
              alignment: Alignment.bottomRight,
              width: width,
              child: Image.asset(AllImages.splashBottomFlow),
            )
          ],
        ),
      ),
    );
  }
}
