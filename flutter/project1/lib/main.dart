import 'package:flutter/material.dart';
import 'package:project1/uses_of_widgets/container_use.dart';
import 'package:project1/uses_of_widgets/scaffold_use.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: ScaffoldUse(),
    );
  }
}
