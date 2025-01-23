
import 'package:flutter/material.dart';
import 'package:grocery_app_ui/config/utiles/all_colors.dart';
import 'package:grocery_app_ui/config/utiles/all_images.dart';
import 'package:grocery_app_ui/config/utiles/all_texts.dart';
import 'package:grocery_app_ui/config/utiles/styles/all_text_styles.dart';

class CategoryCard extends StatefulWidget {
  const CategoryCard({super.key});

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: SizedBox(
        height: 112,
        width: 76,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(5),
              height: 76,
              width: 76,
              decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(10),
                color: AllColors.productBackGrey
              ),
              child: Image.asset(AllImages.noodles, height: 58,)
            ),
            Text(
              AllTexts.vegAndFruits,
              style: AllTextStyles.productSize.copyWith(
                color: AllColors.fontBlack
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
