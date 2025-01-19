import 'package:flutter/material.dart';
import 'package:widgets_use/ui/screens/home_page.dart';
import 'package:widgets_use/ui/widgets_use/flutter_sliveappbar_widget/flutter_sliverappbar_widget.dart';
import 'package:widgets_use/ui/widgets_use/gridview_widget_uses/gridview_widget_uses.dart';
import 'package:widgets_use/ui/widgets_use/image_slider/image_slider_use.dart';
import 'package:widgets_use/ui/widgets_use/layout_design/layout_design.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Widgets uses',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.red,
            appBarTheme: AppBarTheme(
                backgroundColor: Colors.purple,
                titleTextStyle: TextStyle(fontSize: 22, color: Colors.white),
                iconTheme: IconThemeData(color: Colors.white),
            ),
            elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    textStyle: TextStyle(fontSize: 22, color: Colors.white)))),
        routes: {'/': (context) => ImageSliderUse()},
        initialRoute: '/');
  }
}
