import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project1/projects/assignments/assignment2/ass2_ui2/utiles/all_colors.dart';
import 'package:project1/projects/assignments/assignment2/ass2_ui2/utiles/images/first_page_images.dart';
import 'package:project1/projects/assignments/assignment2/ass2_ui2/utiles/styles/ass2_ui2_text_styles.dart';
import 'package:project1/projects/assignments/assignment2/ass2_ui2/utiles/texts/ass2_ui2_all_texts.dart';

class Ass2UI2SearchBar extends StatelessWidget{

  TextEditingController controller = TextEditingController();

  Ass2UI2SearchBar({required this.controller, super.key});

  @override
  Widget build(BuildContext context){
    return  TextField(
      controller: controller,
      style: searchBarTextStyle,
      cursorColor: AllColors.searchBarIconColor,
      cursorHeight: 18,
      decoration: InputDecoration(
        filled: true,
        // fillColor: Colors.red,
        fillColor: AllColors.searchBarBackColor,
        hintText: Ass2UI2AllTexts.searchBarText,
        hintStyle: searchBarTextStyle,
        prefixIcon: InkWell(
          onTap: (){},
          child: Container(
            height: 32,
            width: 32,
            padding: const EdgeInsets.all(13),
            child: SvgPicture.asset(FirstPageImages.searchIcon, height: 19,width: 19)
          )
        ),
        suffixIcon: InkWell(
          onTap: (){},
          child: Container(
            height: 32,
            width: 32,
            padding: const EdgeInsets.all(13),
            child: SvgPicture.asset(FirstPageImages.micIcon, height: 19, width: 19)
          )
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.transparent
          )
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.transparent
          )
        )
      )
    );
  }
}