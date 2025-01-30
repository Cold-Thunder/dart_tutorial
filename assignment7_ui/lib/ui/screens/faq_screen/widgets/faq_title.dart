import 'package:assignment7_ui/config/models/faq_model.dart';
import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:flutter/material.dart';

class FaqTile extends StatefulWidget {
  final FaqModel model;

  const FaqTile({required this.model, super.key});

  @override
  State<FaqTile> createState() => _FaqTileState();
}

class _FaqTileState extends State<FaqTile> with SingleTickerProviderStateMixin {
  final ExpansionTileController _expansionController = ExpansionTileController();


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Theme(
      data: Theme.of(context).copyWith(
        dividerColor: AllColors.transparent,
        splashColor: AllColors.transparent
      ),
      child: ExpansionTile(
        controller: _expansionController,
        iconColor: AllColors.headingBlack,

        backgroundColor: AllColors.appbarWhite,
        textColor: AllColors.headingBlack,

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        collapsedShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        title: Text(
          widget.model.title,
          style: TextStyles.expansionTitleStyle
        ),
        tilePadding: const EdgeInsets.symmetric(horizontal: 12),
        children: [
          Container(
            padding:
                const EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 5),
            width: size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Text(
              widget.model.des,
              style: TextStyles.expansionSubtitleStyle,
            ),
          ),
        ],
      ),
    );
  }
}
