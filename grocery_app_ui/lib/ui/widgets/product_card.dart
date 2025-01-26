import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app_ui/config/models/product_model.dart';
import 'package:grocery_app_ui/config/utiles/all_colors.dart';
import 'package:grocery_app_ui/config/utiles/all_images.dart';
import 'package:grocery_app_ui/config/utiles/all_texts.dart';
import 'package:grocery_app_ui/config/utiles/styles/all_text_styles.dart';
import 'package:grocery_app_ui/ui/widgets/elevated_button_design.dart';

class ProductCard extends StatefulWidget {
  final double? width;
  final ProductModel model;
  final Function? addFunc;
  final Function? removeFunc;

  const ProductCard({this.width, required this.model, this.addFunc, this.removeFunc, super.key});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool favourit = false;
  double width = 160;
  int count = 0;

  addButtonFunc(){
    if(count < 100 && widget.addFunc != null){
      widget.addFunc!(widget.model);
      setState((){
        count += 1;
      });
    }

    // print(widget.model);
  }

  removeItems(){
    if(count >= 0 && widget.removeFunc != null){
      widget.removeFunc!(widget.model);
      setState((){
        count -= 1;
      });
    }
  }

  @override
  void initState(){
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: AllColors.transparent,
      highlightColor: AllColors.transparent,
      onTap: (){},
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(right: 10, bottom: 10),
        padding: const EdgeInsets.all(10),
          height: 230,
          width: widget.width ?? width,
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
            crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // top section
                InkWell(
                  splashColor: AllColors.transparent,
                  highlightColor: AllColors.transparent,
                  onTap: (){
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // top image and fav icon
                      Stack(
                        children: [
                          Container(
                            height: 110,
                            width: widget.width == null  ? 144 : widget.width!*0.9,
                            decoration: BoxDecoration(
                                color: AllColors.productBackGrey,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Image.asset(widget.model.image, height: 90),
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
                      const SizedBox(
                        height: 5,
                      ),
                      // title section
                      Text(
                        widget.model.title,
                        style: AllTextStyles.onboardDesStyle,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      // size section
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          widget.model.size,
                          style: AllTextStyles.productSize,
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ],
                  ),
                ),
                // pre present and add button section
                Row(
                  children: [
                    Text(
                      '\$${widget.model.presPrice}',
                      style: AllTextStyles.onboardDesStyle
                    ),
                    const SizedBox(width: 7),
                    Text(
                      '\$${widget.model.prePrice}',
                      style: AllTextStyles.prePriceStyle
                    ),
                    Spacer(),
                    count == 0 ?
                    ElevatedButtonDesign(
                      title: AllTexts.add, givenHeight: 34, givenWidth: 65, fontSize: 12,
                      func: addButtonFunc,
                    ):
                    Row(
                      children: [
                        ElevatedButtonDesign(title: '-', givenHeight: 32, givenWidth: 32, func: removeItems,),
                        Container(
                          alignment:Alignment.center,
                          width: 18,
                            child: Text(count.toString(), style: AllTextStyles.onboardDesStyle)
                        ),
                        ElevatedButtonDesign(title: '+', givenHeight: 32, givenWidth: 32, func: addButtonFunc)
                      ],
                    )
                  ],
                )
              ]
          )
      ),
    );
  }
}
