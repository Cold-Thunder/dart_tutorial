

import 'package:assignment7_ui/ui/screens/add_card_screen/add_card_screen.dart';
import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/ui/screens/delivery_man_call_screen/delivery_man_call_screen.dart';
import 'package:assignment7_ui/ui/screens/payment_screen/payment_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AllColors.appbarWhite,
        appBarTheme: AppBarTheme(
          backgroundColor: AllColors.appbarWhite,
          elevation: 0,
          scrolledUnderElevation: 0

        )
      ),
      home: DeliveryManCallScreen()
    );
  }
}