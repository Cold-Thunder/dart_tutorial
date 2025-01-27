
import 'package:flutter/material.dart';
import '../../../core/utiles/all_colors.dart';
import '../../../core/utiles/styles/all_text_styles.dart';
import '../models/category_card_model.dart';

class CategoryCard extends StatefulWidget {
  final CategoryCardModel model;
  final Function func;
  final int? clickedInd;
  const CategoryCard({required this.model,required this.func, this.clickedInd, super.key});

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: AllColors.transparent,
      highlightColor: AllColors.transparent,
      onTap: (){
        widget.func();
      },
      child: SizedBox(
        // height: 112,
        width: 76,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          spacing: 5,
          children: [
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(5),
              height: 76,
              width: 76,
              decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(10),
                color: widget.model.index == widget.clickedInd ? AllColors.lightTransGreen :AllColors.productBackGrey
              ),
              child: Image.asset(widget.model.image, height: 58,)
            ),
            Text(
              widget.model.title,
              style: AllTextStyles.productSize.copyWith(
                color: AllColors.fontBlack,
                fontWeight: widget.model.index == widget.clickedInd ? FontWeight.bold : FontWeight.normal
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center
            )
          ],
        )
      ),
    );
  }
}
