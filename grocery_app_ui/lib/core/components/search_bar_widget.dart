import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/utiles/all_colors.dart';
import '../../../core/utiles/all_images.dart';
import '../../../core/utiles/all_texts.dart';
import '../../../core/utiles/styles/all_text_styles.dart';

class SearchBarWidget extends StatelessWidget {
  final double? barWidth;
  final TextEditingController controller;
  final Function? onTapFunction;
  final Function? searchIconFunc;
  final Function? onChangeMethod;
  const SearchBarWidget({this.onChangeMethod, this.barWidth, required this.controller, this.onTapFunction, this.searchIconFunc, super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: barWidth ?? width,
      height: 50,
      child: TextField(
        controller: controller,
        onTap: (){
          if(onTapFunction != null){
            onTapFunction!(context);
          }
        },
          onChanged:(value){
             if(onChangeMethod != null){
               onChangeMethod!(value);
             }
          },
          style: AllTextStyles.searchHintText.copyWith(
            color: AllColors.fontBlack
          ),
          cursorColor: AllColors.mainGreen,
        decoration: InputDecoration(
          hintText: AllTexts.search,
          hintStyle: AllTextStyles.searchHintText,
          filled: true,
          fillColor: AllColors.productBackGrey,
          constraints: BoxConstraints(
            maxHeight: 50,
                maxWidth: barWidth ?? width
          ),
          prefixIcon: InkWell(
            onTap: (){
              if(searchIconFunc != null){
                searchIconFunc!();
              }
            },
              splashColor: AllColors.transparent,
              highlightColor: AllColors.transparent,
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: SvgPicture.asset(
                AllImages.searchIconSvg,
                height: 24,
                width: 24
              ),
            )
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius:  BorderRadius.circular(10),
            borderSide: BorderSide(
              width: 1,
              color: AllColors.transparent
            )
          ),
            focusedBorder: OutlineInputBorder(
                borderRadius:  BorderRadius.circular(10),
                borderSide: BorderSide(
                    width: 1,
                    color: AllColors.transparent
                )
            )
        )
      ),
    );
  }
}
