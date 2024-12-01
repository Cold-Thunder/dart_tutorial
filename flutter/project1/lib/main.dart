import 'package:flutter/material.dart';
import 'package:project1/uses_of_widgets/button_widgets_use.dart';
import 'package:project1/uses_of_widgets/container_use.dart';
import 'package:project1/uses_of_widgets/scaffold_use.dart';
import 'package:project1/uses_of_widgets/stack_widget_use.dart';
import 'package:project1/uses_of_widgets/textField_use.dart';
import 'package:project1/uses_of_widgets/text_use.dart';
import 'package:project1/uses_of_widgets/uses_row_column.dart';
import 'package:project1/uses_of_widgets/wrapper.dart';

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        iconTheme: const IconThemeData(
          color: Colors.white
        )
      ),
      home: Wrapper(),
    );
  }
}
