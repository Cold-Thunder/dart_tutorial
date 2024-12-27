
import 'package:assignment7_ui/screens/edit_profile_screen.dart';
import 'package:assignment7_ui/screens/home_v3.dart';
import 'package:assignment7_ui/screens/my_address_screen.dart';
import 'package:assignment7_ui/screens/payment_success_screen.dart';
import 'package:assignment7_ui/screens/personal_profile_screen.dart';
import 'package:assignment7_ui/screens/profile_screen.dart';
import 'package:assignment7_ui/screens/splash_one.dart';
import 'package:assignment7_ui/utiles/all_colors.dart';
import 'package:flutter/material.dart';

class AppMain extends StatelessWidget{
  const AppMain({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AllColors.appbarWhite,
        appBarTheme: AppBarTheme(
          backgroundColor: AllColors.appbarWhite
        )
      ),
      home: MyAddressScreen()
    );
  }
}