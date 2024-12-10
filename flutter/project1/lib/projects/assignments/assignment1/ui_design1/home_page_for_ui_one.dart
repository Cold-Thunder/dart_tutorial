import 'package:flutter/material.dart';
import 'package:project1/projects/assignments/assignment1/ui_design1/utiles/styles/all_colors.dart';
import 'package:project1/projects/assignments/assignment1/ui_design1/widgets/heading_section/heading_section.dart';
import 'package:project1/projects/assignments/assignment1/ui_design1/widgets/search_button.dart';
import 'package:project1/projects/assignments/assignment1/ui_design1/widgets/second_section/second_section_card.dart';

class HomePageForUIOne extends StatelessWidget{
  const HomePageForUIOne({super.key});
  @override
  Widget build(BuildContext context){
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
        child: Container(
          color: homePageBackColor,
          height: height,
          child: Column(
            children: [
              HeadingSection(),
              const SizedBox(height: 50),
              const SecondSectionCard(),
              const SizedBox(height: 30),
              SearchButton()
            ]
          )
        )
      ))
    );
  }
}