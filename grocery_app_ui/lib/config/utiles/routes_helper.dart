import 'package:flutter/cupertino.dart';
import 'package:grocery_app_ui/ui/screens/login_page/login_page.dart';
import 'package:grocery_app_ui/ui/screens/onboardings/onboarding_screen.dart';
import 'package:grocery_app_ui/ui/screens/splash_screen/splash_screen.dart';

class RoutesHelper{
  static String splashScreen = '/';
  static String onboarding = '/onboarding';
  static String loginPage = '/login';
  static Map<String, WidgetBuilder> allRoutes(){
    return {
      RoutesHelper.splashScreen: (context)=>SplashScreen(),
      RoutesHelper.onboarding: (context)=>OnboardingScreen(),
      RoutesHelper.loginPage: (context)=>LoginPage()
    };
  }
}