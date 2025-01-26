import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:grocery_app_ui/config/utiles/all_colors.dart';
import 'package:grocery_app_ui/config/utiles/all_texts.dart';
import 'package:grocery_app_ui/ui/screens/search_screen/widgets/bottom_sheet_check.dart';
import 'package:grocery_app_ui/ui/screens/search_screen/widgets/search_screen_heading.dart';

class SorterBottomSheet extends StatefulWidget {
  const SorterBottomSheet({super.key});

  @override
  State<SorterBottomSheet> createState() => _SorterBottomSheetState();
}

class _SorterBottomSheetState extends State<SorterBottomSheet> {
  int checked = 0;
  bool relevance = false;
  bool popularity = false;
  bool lowToHigh = false;

  radioButtonOnchangeFunc(int id) {
    setState(() {
      switch (id) {
        case 0:
          relevance = !relevance;
        case 1:
          popularity = !popularity;
        case 2:
          lowToHigh = !lowToHigh;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        width: width,
        height: 200,
        decoration: BoxDecoration(
          color: AllColors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(23),
            topRight: Radius.circular(23),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                  height: 3,
                  width: 44,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AllColors.closerGrey)),
            ),
            const SizedBox(height: 20),
            SearchScreenHeading(heading: AllTexts.sortBy),
            const SizedBox(height: 10),
            Divider(height: 1, color: AllColors.closerGrey),
            Expanded(
                child: BottomSheetCheck(
                    id: 0,
                    data: relevance,
                    title: AllTexts.relevance,
                    radioChangeFunc: radioButtonOnchangeFunc)),
            Expanded(
                child: BottomSheetCheck(
                    id: 1,
                    data: popularity,
                    title: AllTexts.popularity,
                    radioChangeFunc: radioButtonOnchangeFunc)),
            Expanded(
                child: BottomSheetCheck(
                    id: 2,
                    data: lowToHigh,
                    title: AllTexts.lowToHigh,
                    radioChangeFunc: radioButtonOnchangeFunc)),
          ],
        ),
      ),
    );
  }
}
