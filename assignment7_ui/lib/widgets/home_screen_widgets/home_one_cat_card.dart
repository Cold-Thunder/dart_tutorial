import 'package:assignment7_ui/utiles/all_colors.dart';
import 'package:assignment7_ui/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/widgets/grey_card.dart';
import 'package:flutter/material.dart';

class HomeOneCatCard extends StatefulWidget {
  final String title;
  const HomeOneCatCard({required this.title, super.key});

  @override
  State<HomeOneCatCard> createState() => _HomeOneCatCardState();
}

class _HomeOneCatCardState extends State<HomeOneCatCard> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 60,
      child:InkWell(
        borderRadius: BorderRadius.circular(39),
        onTap: (){
          setState((){
            selected = !selected;
          });
        },
        child: Card(
          color: selected ? AllColors.selectedYellow : AllColors.appbarWhite,
          elevation: 6,
          shadowColor: AllColors.shadowColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 8),
            child: Row(
              children: [
                GreyCard(height: 44, width: 44, borderRad: 26),
                const SizedBox(width: 10),

               Text(
                   widget.title,
                    style: TextStyles.elevatedButtonStyle.copyWith(
                      color: AllColors.headingBlack
                    )
                  ),
              ],
            ),
          )
        ),
      ),
    );
  }
}
