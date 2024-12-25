
import 'package:assignment7_ui/utiles/all_colors.dart';
import 'package:assignment7_ui/utiles/images/all_images.dart';
import 'package:assignment7_ui/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/utiles/texts/home_screen_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeSearchbar extends StatefulWidget{
  final TextEditingController controller;
  const HomeSearchbar({required this.controller, super.key});

  @override
  State<HomeSearchbar> createState() => _HomeSearchbarState();
}

class _HomeSearchbarState extends State<HomeSearchbar> {
  bool showPass = true;

  @override
  Widget build(BuildContext context){
    return SizedBox(
      height: 62,
      child: TextField(
          controller: widget.controller,
          style: TextStyles.hintTextStyle.copyWith(
              color: AllColors.inputTextBlack
          ),
          cursorColor: AllColors.inputTextBlack,
          // decorating input field
          decoration: InputDecoration(
              hintText: HomeScreenText.homeSearchHint,
              hintStyle: TextStyles.hintTextStyle,
              filled: true,
              fillColor: AllColors.inputFieldWhite,
              contentPadding: const EdgeInsets.symmetric(horizontal: 15),
              prefixIcon: InkWell(
                onTap: (){},
                child: Container(
                  padding: const EdgeInsets.all(16),
                  height: 15,
                    width: 15,
                  child: SvgPicture.asset(AllImages.searchIcon, height: 15, width: 15)
                ),
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                      width: 0,
                      color: AllColors.transparent
                  )
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                      width: 0,
                      color: AllColors.transparent
                  )
              )
          )
      ),
    );
  }
}