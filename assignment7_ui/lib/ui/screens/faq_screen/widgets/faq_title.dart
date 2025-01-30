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

  late AnimationController _rotationController;
  late Animation _animate;

  bool show = false;

  showFunc() {
    setState(() {
      show = !show;
    });
    if (show == false) {
      _rotationController.forward();
    } else {
      _rotationController.animateBack(
        0.0,
        duration: Duration(milliseconds: 300),
      );
    }
  }

  @override
  void initState() {
    super.initState();

    _rotationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _animate = Tween(begin: 0.0, end: 3.1416).animate(_rotationController);
    // listener
    _rotationController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // return Column(
    //   children: [
    //     // title section
    //     InkWell(
    //       onTap: () {
    //         showFunc();
    //       },
    //       splashColor: AllColors.transparent,
    //       highlightColor: AllColors.transparent,
    //       child: Container(
    //         padding: const EdgeInsets.all(10),
    //         height: 40,
    //         decoration: BoxDecoration(
    //             color: AllColors.buttonOrange,
    //             borderRadius: BorderRadius.circular(10),
    //         ),
    //         child: Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: [
    //             Text(
    //               widget.model.title,
    //               style: TextStyles.categoryHeadingStyle
    //                   .copyWith(color: AllColors.appbarWhite, fontSize: 16),
    //             ),
    //             InkWell(
    //               onTap: () {
    //                 showFunc();
    //               },
    //               splashColor: AllColors.transparent,
    //               highlightColor: AllColors.transparent,
    //               child: Transform.rotate(
    //                 angle: _animate.value,
    //                 child: SizedBox(
    //                   height: 30,
    //                   width: 30,
    //                   child: SvgPicture.asset(AllImages.downArrowIcon,
    //                       height: 20, width: 30),
    //                 ),
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //     ),
    //     Container(
    //       padding:
    //           const EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 5),
    //       width: size.width,
    //       decoration: BoxDecoration(
    //         borderRadius: BorderRadius.only(
    //           bottomLeft: Radius.circular(10),
    //           bottomRight: Radius.circular(10),
    //         ),
    //       ),
    //       child: Text(
    //         widget.model.des,
    //         style: TextStyles.headingTextStyle.copyWith(fontSize: 14),
    //       ),
    //     ),
    //   ],
    // );

    return Theme(
      data: Theme.of(context).copyWith(
        dividerColor: AllColors.transparent,
        splashColor: AllColors.transparent
      ),
      child: ExpansionTile(
        controller: _expansionController,
        iconColor: AllColors.headingBlack,
        collapsedIconColor: AllColors.appbarWhite,

        backgroundColor: AllColors.appbarWhite,
        collapsedBackgroundColor: AllColors.buttonOrange,
        textColor: AllColors.headingBlack,
        collapsedTextColor: AllColors.appbarWhite,

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
