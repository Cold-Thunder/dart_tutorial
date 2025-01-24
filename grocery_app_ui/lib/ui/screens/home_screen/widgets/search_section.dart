import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app_ui/config/utiles/all_colors.dart';
import 'package:grocery_app_ui/config/utiles/all_images.dart';

class SearchSection extends StatelessWidget {
  final TextEditingController controller;
  const SearchSection({required this.controller, super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
              SizedBox(
                width: width*0.733,
                height: 50,
                child: TextField(
                  controller: controller,

                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AllColors.productBackGrey,
                    constraints: BoxConstraints(
                      maxHeight: 50
                    ),
                    prefixIcon: InkWell(
                      onTap: (){},
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
              ),
            InkWell(
              onTap: (){},
              splashColor: AllColors.transparent,
              highlightColor: AllColors.transparent,
              child: Container(
                padding: const EdgeInsets.all(13),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AllColors.mainGreen
                ),
                child: SvgPicture.asset(AllImages.filterSvg, height: 24, width: 24)
              ),
            )
          ],
        )
    );
  }
}
