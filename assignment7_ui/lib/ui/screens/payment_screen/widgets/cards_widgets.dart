import 'package:assignment7_ui/config/models/small_card_modal.dart';
import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:flutter/material.dart';

class CardsWidget extends StatelessWidget {
  final SmallCardModal modal;
  final Function func;
  final bool selected;

  const CardsWidget({required this.modal, required this.func, required this.selected, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        func(modal.id);
      },
      splashColor: AllColors.transparent,
      highlightColor: AllColors.transparent,
      child: Container(
        margin: const EdgeInsets.only(right: 15, top: 12),
        height: 93,
        width: 85,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  height: 72,
                  width: 85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9.62),
                    color: AllColors.inputFieldWhite,
                    border: Border.all(
                      color:selected ? AllColors.buttonOrange : AllColors.transparent,
                      width: 2,
                    ),
                  ),
                  child: Image.asset(
                    modal.image,
                  ),
                ),
                selected ? Positioned(
                  top: -12,
                    right: 0,
                    child: Container(
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AllColors.appbarWhite
                      ),
                      child: Icon(Icons.check_circle, size: 24, color: AllColors.buttonOrange)
                    )
                ) : SizedBox()
              ]
            )
            ,
            Text(
              modal.title,
              style: TextStyles.hintTextStyle
                  .copyWith(color: AllColors.smallVisaGrey),
            ),
          ],
        ),
      ),
    );
  }
}
