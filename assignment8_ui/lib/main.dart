import 'package:assignment8_ui/config/all_colors.dart';
import 'package:assignment8_ui/ui/screens/login_screen/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment8 UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AllColors.appBarWhite,
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          backgroundColor: AllColors.appBarWhite,
          iconTheme: IconThemeData(
            color: AllColors.appBarIconBlack
          )
        )
      ),
      home: LoginScreen(),
    );
  }
}

