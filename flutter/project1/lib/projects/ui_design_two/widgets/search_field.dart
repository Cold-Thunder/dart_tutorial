import 'package:flutter/material.dart';
import 'package:project1/projects/ui_design_two/utiles/colors/colors.dart';
import 'package:project1/projects/ui_design_two/utiles/icons/icons_for_use.dart';
import 'package:project1/projects/ui_design_two/utiles/texts_styles/text_styles.dart';

class SearchField extends StatelessWidget {
  final TextEditingController _searchCont;
  const SearchField({required TextEditingController searchCont, super.key})
      : _searchCont = searchCont;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black12,
                  offset: Offset(1, 1),
                  blurRadius: 5,
                  spreadRadius: 1)
            ]),
        child: TextField(
            controller: _searchCont,
            style: searchTextTypeStyle,
            cursorColor: appBarColor,
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Search',
                hintStyle: searchTextStyle,

                prefixIcon: IconButton(
                  icon: searchIcon,
                  onPressed: (){print('searching');}
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        const BorderSide(width: 0, color: Colors.transparent)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                        width: 0, color: Colors.transparent)))));
  }
}
