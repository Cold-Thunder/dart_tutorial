import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/all_images.dart';
import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/config/utiles/all_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchBarCustWidget extends StatefulWidget {
  TextEditingController controller = TextEditingController();
  final Function? searchIconFunc;
  final Function clearIconFunc;

  SearchBarCustWidget({required this.controller, this.searchIconFunc, required this.clearIconFunc, super.key});

  @override
  State<SearchBarCustWidget> createState() => _SearchBarCustWidgetState();
}

class _SearchBarCustWidgetState extends State<SearchBarCustWidget> {

  @override
  Widget build(BuildContext context) {
    TextEditingController cont = widget.controller;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: SizedBox(
        height: 62,
        child: TextField(
            controller: cont,
            style: TextStyles.hintTextStyle
                .copyWith(color: AllColors.inputTextBlack),
            cursorColor: AllColors.inputTextBlack,
            // decorating input field
            decoration: InputDecoration(
                hintText: AllTexts.pizza,
                hintStyle: TextStyles.hintTextStyle,
                filled: true,
                fillColor: AllColors.inputFieldWhite,
                contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                prefixIcon: InkWell(
                  onTap: (){
                    if(widget.searchIconFunc != null){
                      widget.searchIconFunc!();
                    }
                  },
                    child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: SvgPicture.asset(AllImages.searchIcon,
                      height: 13.33, width: 13.33),
                )),
                suffixIcon: cont.text.toString() != '' ? InkWell(
                  onTap: (){
                    cont.clear();
                    widget.clearIconFunc();
                  },
                  child: Container(
                    margin: const EdgeInsets.all(15),
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      color: AllColors.closeIconGrey,
                      shape: BoxShape.circle
                    ),
                    child: Icon(Icons.close,
                        size: 14, color: AllColors.appbarWhite),
                  ),
                ) : SizedBox(),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        BorderSide(width: 0, color: AllColors.transparent)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        BorderSide(width: 0, color: AllColors.transparent)))),
      ),
    );
  }
}
