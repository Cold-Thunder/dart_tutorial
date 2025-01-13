import 'package:assignment8_ui/config/all_colors.dart';
import 'package:assignment8_ui/config/all_texts.dart';
import 'package:assignment8_ui/config/styles/text_styles.dart';
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: SizedBox(
        height: 60,
        width: width,
        child: TextField(
          controller: _controller,
          decoration: InputDecoration(
            hintText: AllTexts.searchHere,
            hintStyle: TextStyles.inputTextStyle.copyWith(
              color: AllColors.hintGrey
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 15),
            suffixIcon: InkWell(
              onTap: (){
                _controller.clear();
              },
              splashColor: AllColors.transparent,
              highlightColor: AllColors.transparent,
              child: SizedBox(
                width: 53,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 35,
                      width: 1,
                      child: VerticalDivider(
                        width: 1,
                        color: AllColors.borderOutlineGrey
                      )
                    ),
                    SizedBox(
                      height: 50,
                      width: 50,
                      // color: Colors.red,
                      child: Icon(Icons.search, size: 22, color: AllColors.headingBlack)
                    ),
                  ],
                ),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                width:1,
                color: AllColors.borderOutlineGrey
              )
          ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                width: 1,
                color: AllColors.borderOutlineGrey
              )
            )
          )
        )
      ),
    );
  }
}
