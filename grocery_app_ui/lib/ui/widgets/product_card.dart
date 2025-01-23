import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app_ui/config/utiles/all_colors.dart';
import 'package:grocery_app_ui/config/utiles/all_images.dart';
import 'package:grocery_app_ui/config/utiles/all_texts.dart';
import 'package:grocery_app_ui/config/utiles/styles/all_text_styles.dart';
import 'package:grocery_app_ui/ui/widgets/elevated_button_design.dart';

class ProductCard extends StatefulWidget {
  final double? height;
  final double? width;
  final double? prodBackHeight;
  final double? prodBackWidth;
  const ProductCard({this.height, this.width, this.prodBackHeight, this.prodBackWidth, super.key});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool favourit = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: AllColors.transparent,
      highlightColor: AllColors.transparent,
      onTap: (){},
      child: Container(
        padding: const EdgeInsets.all(10),
          height: widget.height ?? 220,
          width: widget.width ?? 160,
          decoration: BoxDecoration(
            color: AllColors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                offset: Offset(1,3),
                color: AllColors.transparent40,
                blurRadius: 14
              ),
              BoxShadow(
                offset: Offset(1, -3),
                color: AllColors.white,
                blurRadius: 14
              )
            ]
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // top section
                Stack(
                  children: [
                    Container(
                      height: widget.prodBackHeight ?? 110,
                      width: widget.prodBackWidth ?? 144,
                      decoration: BoxDecoration(
                          color: AllColors.productBackGrey,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Image.asset(AllImages.surfexel, height: 90),
                    ),
                    Positioned(
                      right: 10,
                      top: 10,
                      child: InkWell(
                          onTap: (){
                            setState((){
                              favourit = !favourit;
                            });
                          },
                          child: SvgPicture.asset(favourit ? AllImages.redHeartSvg :AllImages.heartSvg, height: 18, width: 18)
                      ),
                    )
                  ],
                ),
                Text(
                  AllTexts.surfexDes,
                  style: AllTextStyles.onboardDesStyle,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  AllTexts.surfSize,
                  style: AllTextStyles.productSize,
                ),
                Row(
                  spacing: 7,
                  children: [
                    Text(
                      '\$${AllTexts.presPrice}',
                      style: AllTextStyles.onboardDesStyle
                    ),
                    Text(
                      '\$${AllTexts.prePrice}',
                      style: AllTextStyles.prePriceStyle
                    ),
                    Spacer(),
                    ElevatedButtonDesign(title: AllTexts.add, height: 34, givenWidth: 65, fontSize: 12,)
                  ],
                )
              ]
          )
      ),
    );
  }
}
