import 'package:assignment8_ui/config/all_texts.dart';
import 'package:assignment8_ui/config/styles/text_styles.dart';
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 60,
      width: width,
      child: TextField(
        controller: _controller,
        decoration: InputDecoration(
          hintText: AllTexts.searchHere,
          hintStyle: TextStyles.inputTextStyle

        )
      )
    );
  }
}
