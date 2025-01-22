import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app_ui/config/utiles/all_images.dart';
import 'package:grocery_app_ui/config/utiles/routes_helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer _timer;
  @override
  void initState(){
    super.initState();
    _timer = Timer(Duration(seconds: 3), (){
      Navigator.pushReplacementNamed(context, RoutesHelper.onboarding);
    });
  }

  @override
  void dispose(){
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SizedBox(
        height: height,
        width: width,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              bottom: -5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    alignment: Alignment.bottomRight,
                    height: 350,
                    width: width,
                    child: Image.asset(AllImages.splashFruits, height: 350, width: width)
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 105.9,
              width: 105.9,
              child: SvgPicture.asset(AllImages.logoSvg, height: 105.9, width: 105.9)
            )
          ],
        ),
      ),
    );
  }
}
