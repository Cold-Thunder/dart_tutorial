import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/ui/widgets/back_icon.dart';
import 'package:assignment7_ui/ui/widgets/grey_card.dart';
import 'package:flutter/material.dart';

class AppBarSection extends StatefulWidget {
  const AppBarSection({super.key});

  @override
  State<AppBarSection> createState() => _AppBarSectionState();
}

class _AppBarSectionState extends State<AppBarSection> {
  bool fav = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width*0.95,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BackIcon(color: AllColors.backIconGrey),
          InkWell(
              onTap: (){
                setState(() {
                  fav = !fav;
                });
              },
              child: Container(
                  height: 37,
                  width: 37,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AllColors.white20
                  ),
                  child: Icon(
                      fav
                          ? Icons.favorite
                          : Icons.favorite_border_outlined,
                      size: 22,
                      color: fav ? AllColors.canceledRed: AllColors.appbarWhite
                  )
              )
          )
        ],
      ),
    );
  }
}
