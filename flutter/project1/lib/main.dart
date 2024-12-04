import 'package:flutter/material.dart';
import 'package:project1/examples/appBar_and_text/appBar_and_text_exam.dart';
import 'package:project1/examples/flutter_material_app/material_app_2nd_example.dart';
import 'package:project1/examples/flutter_material_app/material_app_example.dart';
import 'package:project1/examples/works_with_text/text_main.dart';
import 'package:project1/uses_of_widgets/button_widgets_use.dart';
import 'package:project1/uses_of_widgets/container_use.dart';
import 'package:project1/uses_of_widgets/form_use.dart';
import 'package:project1/uses_of_widgets/scaffold_use.dart';
import 'package:project1/uses_of_widgets/stack_widget_use.dart';
import 'package:project1/uses_of_widgets/textField_use.dart';
import 'package:project1/uses_of_widgets/text_use.dart';
import 'package:project1/uses_of_widgets/uses_row_column.dart';
import 'package:project1/uses_of_widgets/wrapper.dart';

void main() {
  runApp(TextMain());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bootcamp1',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/': (context)=> MaterialAppExample(),
        '/material_2nd_example': (context)=> Material2ndExample()
      },
      initialRoute: '/'
    );
  }
}
