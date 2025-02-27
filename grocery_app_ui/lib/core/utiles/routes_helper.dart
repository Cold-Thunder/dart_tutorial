import 'package:flutter/cupertino.dart';
import 'package:grocery_app_ui/features/cart_screen/cart_screen.dart';
import 'package:grocery_app_ui/features/confirm_delievery_location/confirm_delievery_location.dart';

import '../../features/best_deal_screen/best_deal_screen.dart';
import '../../features/home_screen/home_screen.dart';
import '../../features/login_page/login_page.dart';
import '../../features/onboardings/onboarding_screen.dart';
import '../../features/search_screen/search_screen.dart';
import '../../features/signup_page/signup_screen.dart';
import '../../features/splash_screen/splash_screen.dart';

class RoutesHelper{
  static String splashScreen = '/';
  static String onboarding = '/onboarding';
  static String loginPage = '/login';
  static String signupPage = '/signup';
  static String homeScreen = '/homeScreen';
  static String bestDealScreen = '/bestDealScreen';
  static String searchScreen = '/searchScreen';
  static String cartScreen = '/cartScreen';
  static String confirmDeliveryLocation = '/confirm_delivery_location';

  static Map<String, WidgetBuilder> allRoutes(){
    return {
      RoutesHelper.splashScreen: (context)=>SplashScreen(),
      RoutesHelper.onboarding: (context)=>OnboardingScreen(),
      RoutesHelper.loginPage: (context)=>LoginPage(),
      RoutesHelper.signupPage: (context)=>SignupScreen(),
      RoutesHelper.homeScreen: (context)=>HomeScreen(),
      RoutesHelper.bestDealScreen: (context)=>BestDealScreen(),
      RoutesHelper.searchScreen: (context)=>SearchScreen(),
      RoutesHelper.cartScreen: (context)=>CartScreen(),
      RoutesHelper.confirmDeliveryLocation: (context)=>ConfirmDelieveryLocation(),
    };
  }
}