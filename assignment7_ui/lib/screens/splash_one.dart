import 'dart:async';

import 'package:assignment7_ui/screens/splash_two.dart';
import 'package:assignment7_ui/utiles/images/all_images.dart';
import 'package:flutter/material.dart';

class SplashOne extends StatefulWidget {
  const SplashOne({super.key});

  @override
  State<SplashOne> createState() => _SplashOneState();
}

class _SplashOneState extends State<SplashOne> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 1), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context)=>SplashTwo()),
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
            child: Image.asset(AllImages.logo, height: 59, width: 121.13)));
  }
}
