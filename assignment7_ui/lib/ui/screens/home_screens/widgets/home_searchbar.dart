import 'package:assignment7_ui/config/utiles/all_texts.dart';
import 'package:assignment7_ui/ui/screens/search_screen/search_screen.dart';
import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/all_images.dart';
import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeSearchbar extends StatefulWidget {
  final TextEditingController controller;

  const HomeSearchbar({required this.controller, super.key});

  @override
  State<HomeSearchbar> createState() => _HomeSearchbarState();
}

class _HomeSearchbarState extends State<HomeSearchbar> {
  bool showPass = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: TextField(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SearchScreen(),
            ),
          );
        },
        controller: widget.controller,
        style:
            TextStyles.hintTextStyle.copyWith(color: AllColors.inputTextBlack),
        cursorColor: AllColors.inputTextBlack,
        // decorating input field
        decoration: InputDecoration(
          hintText: AllTexts.homeSearchHint,
          hintStyle: TextStyles.hintTextStyle,
          filled: true,
          fillColor: AllColors.inputFieldWhite,
          contentPadding: const EdgeInsets.symmetric(horizontal: 15),
          prefixIcon: InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: SvgPicture.asset(AllImages.searchIcon,
                    height: 13.33, width: 13.33),
              )),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 0, color: AllColors.transparent),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 0, color: AllColors.transparent),
          ),
        ),
      ),
    );
  }
}
