

import 'package:assignment7_ui/ui/screens/add_card_screen/add_card_screen.dart';
import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/ui/screens/add_new_address_screen/add_new_address_screen.dart';
import 'package:assignment7_ui/ui/screens/delivery_man_call_screen/delivery_man_call_screen.dart';
import 'package:assignment7_ui/ui/screens/delivery_man_message/delivery_man_message_screen.dart';
import 'package:assignment7_ui/ui/screens/edit_cart_screen/edit_cart_screen.dart';
import 'package:assignment7_ui/ui/screens/food_business_screen/food_business_screen.dart';
import 'package:assignment7_ui/ui/screens/food_details_screen/food_details_screen1.dart';
import 'package:assignment7_ui/ui/screens/food_details_screen_two/food_details_screen_two.dart';
import 'package:assignment7_ui/ui/screens/home_screens/home_v1.dart';
import 'package:assignment7_ui/ui/screens/payment_screen/payment_screen.dart';
import 'package:assignment7_ui/ui/screens/resturant_view_one/resturant_view_one_screen.dart';
import 'package:assignment7_ui/ui/screens/resturant_view_two/restaurant_view_two_screen.dart';
import 'package:assignment7_ui/ui/screens/splash_screens/splash_one.dart';
import 'package:assignment7_ui/ui/screens/splash_screens/splash_two.dart';
import 'package:assignment7_ui/ui/screens/tracking_order_screen/track_order_screen.dart';
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
      home: TrackOrderScreen()
    );
  }
}