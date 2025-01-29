import 'dart:async';

import 'package:assignment7_ui/ui/screens/log_in_screen/login_screen.dart';
import 'package:assignment7_ui/ui/screens/onboarding_screens/onboarding_screen.dart';
import 'package:assignment7_ui/config/utiles/all_images.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashTwo extends StatefulWidget {
  const SplashTwo({super.key});

  @override
  State<SplashTwo> createState() => _SplashTwoState();
}

class _SplashTwoState extends State<SplashTwo> {

  bool? isFirstTime = true;

  storingIsFirstTime() async{
    final storeData = await SharedPreferences.getInstance();
    storeData.setBool('isFirst', false);
  }

  gettingIsFirst() async{
    final storeData = await SharedPreferences.getInstance();
    if(storeData.getBool('isFirst') != null){
      setState((){
        isFirstTime = storeData.getBool('isFirst');
      });
    }
  }

  @override
  void initState(){
    super.initState();
    storingIsFirstTime();
    gettingIsFirst();

    Timer(Duration(seconds: 2), (){
      if(isFirstTime == true){
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context)=>OnboardingScreen())
        );
      }else{
        Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context)=>LoginScreen()
        ));
      }

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
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 0,
              child: Container(
                width: width,
                alignment: Alignment.topLeft,
                child: Image.asset(AllImages.splashTopFlow),
              ),
            ),
            Image.asset(AllImages.logo, height: 59, width: 121.13),
            Positioned(
              bottom: 0,
              child: Container(
                alignment: Alignment.bottomRight,
                width: width,
                child: Image.asset(AllImages.splashBottomFlow),
              ),
            )
          ],
        ),
      ),
    );
  }
}
