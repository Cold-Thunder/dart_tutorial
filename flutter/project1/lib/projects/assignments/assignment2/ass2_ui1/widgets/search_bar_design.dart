import 'package:flutter/material.dart';
import 'package:project1/projects/assignments/assignment2/ass2_ui1/utiles/all_colors.dart';
import 'package:project1/projects/assignments/assignment2/ass2_ui1/utiles/styles/text_styles.dart';
import 'package:project1/projects/assignments/assignment2/ass2_ui1/utiles/texts/ass2_ui1_texts.dart';

class SearchBarDesign extends StatelessWidget{

  final TextEditingController searchController = TextEditingController();

  SearchBarDesign({required searchController, super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            offset: const Offset(1,1),
            color: Ass2UI1AllColors.shadowBlack,
            spreadRadius: 1,
            blurRadius: 10
          )
        ]
      ),
      child: TextField(
        controller: searchController,
        textAlignVertical: TextAlignVertical.center,
        style: TextStyle(
          fontSize: 19,
          color: Ass2UI1AllColors.hintGrey
        ),
        decoration: InputDecoration(
          hintText: Ass2UI1Texts.searchText,
            hintStyle: TextStyle(
                fontSize: 18.5,
                color: Ass2UI1AllColors.hintGrey
            ),
            filled: true,
          fillColor: Ass2UI1AllColors.myWhite,
          prefixIcon: IconButton(
            onPressed: (){},
            icon: Icon(
                Icons.search_sharp,
                size: 30,
                color: Ass2UI1AllColors.myBlack)
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: Colors.transparent
            )
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: Colors.transparent
            )
          )
        )
      )
    );
  }
}