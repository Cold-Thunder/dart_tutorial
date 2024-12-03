import 'package:flutter/material.dart';
import 'package:material_app_exmaples/examples/flutter_material_app/material_app_2nd_example.dart';
import 'package:material_app_exmaples/examples/flutter_material_app/material_app_example.dart';
import 'package:material_app_exmaples/examples/flutter_theme_examples/appBarTheme/flutter_appBar_theme.dart';
import 'package:material_app_exmaples/practices/appBar_practice/practice1.dart';
import 'package:material_app_exmaples/practices/appBar_practice/practice2.dart';

void main() {
  runApp(AppBarPractice2());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        //appBarTheme is using for giving a default appbar color for the app
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          iconTheme: IconThemeData(
            color: Colors.white
          )
        )
      ),
      routes: {
        '/': (context)=>MaterialAppExample(),
        '/material_2nd_example': (context)=>Material2ndExample()
      },
      initialRoute: '/'
    );
  }
}
