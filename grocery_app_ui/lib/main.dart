import 'package:flutter/material.dart';

import 'core/utiles/all_colors.dart';
import 'core/utiles/routes_helper.dart';
import 'core/utiles/styles/all_text_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grocery App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          backgroundColor: AllColors.white,
          iconTheme: IconThemeData(
            color: AllColors.fontBlack,
          ),
          titleTextStyle: AllTextStyles.onboardHeadingStyle.copyWith(
            fontSize: 14
          ),
          centerTitle: true,
          scrolledUnderElevation: 0.0,
        )
      ),
      initialRoute: RoutesHelper.splashScreen,
      routes: RoutesHelper.allRoutes()
    );
  }
}
