import 'package:flutter/material.dart';
import 'package:project1/examples/alert_dialoge_examples/alert_dialoge_examples_main.dart';
import 'package:project1/examples/appBar_and_text/appBar_and_text_exam.dart';
import 'package:project1/examples/flutter_material_app/material_app_2nd_example.dart';
import 'package:project1/examples/flutter_material_app/material_app_example.dart';
import 'package:project1/examples/image_widget_use/image_use_main.dart';
import 'package:project1/examples/row_column_examples/row_and_column.dart';
import 'package:project1/examples/works_with_text/text_main.dart';
import 'package:project1/projects/ui_design_one/ui_desing_main.dart';
import 'package:project1/projects/ui_design_two/ui_design_main_two.dart';
import 'package:project1/uses_of_widgets/alert_dialog_widget.dart';
import 'package:project1/uses_of_widgets/button_widgets_use.dart';
import 'package:project1/uses_of_widgets/container_use.dart';
import 'package:project1/uses_of_widgets/form_use.dart';
import 'package:project1/uses_of_widgets/scaffold_use.dart';
import 'package:project1/uses_of_widgets/stack_widget_use.dart';
import 'package:project1/uses_of_widgets/textField_use.dart';
import 'package:project1/uses_of_widgets/text_use.dart';
import 'package:project1/uses_of_widgets/uses_row_column.dart';
import 'package:project1/uses_of_widgets/wrapper.dart';
import 'package:project1/utiles/colors/my_colors.dart';
import 'package:project1/utiles/texts/my_text.dart';
import 'package:project1/utiles/widgets/custom_card.dart';


void main() {
  runApp(AlertDialogExamplesMain());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: MyText.appBarDefaultTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        appBarTheme: AppBarTheme(
            backgroundColor: MyColors.red
        ),
      ),

      routes: {
        '/': (context)=> AlertDialogWidget(),
        '/material_2nd_example': (context)=> Material2ndExample()
      },
      initialRoute: '/'
    );
  }
}
