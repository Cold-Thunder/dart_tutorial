import 'package:assignment7_ui/config/models/cart_item_model.dart';
import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/all_images.dart';
import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/config/utiles/all_texts.dart';
import 'package:assignment7_ui/ui/widgets/grey_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemCard extends StatefulWidget {
  final CartItemModel model;
  final bool isEdit;
  final double totalPrice;
  final Function totalPriceFunc;

  const ItemCard(
      {required this.isEdit,
      required this.model,
      required this.totalPrice,
      required this.totalPriceFunc,
      super.key});

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  late int _count;

  @override
  void initState() {
    super.initState();
    _count = widget.model.count;
  }

  increaseCount() {
    setState(() {
      _count++;
      double newTotal = widget.totalPrice + widget.model.price;
      widget.totalPriceFunc(newTotal);
    });
  }

  decreaseCount() {
    if (_count > 0) {
      setState(() {
        _count--;
        if (widget.totalPrice > 0) {
          double newTotal = widget.totalPrice - widget.model.price;
          widget.totalPriceFunc(newTotal);
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(bottom: 35),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 100,
      width: width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GreyCard(
              height: 100,
              width: 100,
              color: AllColors.cartCardBlack,
              image: widget.model.image),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // heading section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: width * 0.39,
                      child: Text(widget.model.title,
                          style: TextStyles.cartItemHeadTextStyle,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis),
                    ),
                    Visibility(
                      visible: widget.isEdit,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          height: 27,
                          width: 27,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AllColors.canceledRed),
                          child: SvgPicture.asset(AllImages.closeWhiteIcon,
                              height: 9, width: 9),
                        ),
                      ),
                    ),
                  ],
                ),
                // size showing
                Text(
                  AllTexts.size,
                  style: TextStyles.cartItemSizeTextStyle,
                ),
                SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // price showing
                        Text(
                          "\$${_count * widget.model.price}",
                          style: TextStyles.profileNameStyle
                              .copyWith(color: AllColors.buttonOrange),
                        ),
                        Row(
                          spacing: 10,
                          children: [
                            InkWell(
                              onTap: decreaseCount,
                              splashColor: AllColors.transparent,
                              highlightColor: AllColors.transparent,
                              child: Container(
                                height: 22,
                                width: 22,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AllColors.buttonOrange),
                                child: Icon(Icons.remove,
                                    size: 15, color: AllColors.appbarWhite),
                              ),
                            ),
                            Text(_count.toString(),
                                style: TextStyles.profileNameStyle
                                // .copyWith(color: AllColors.appbarWhite),
                                ),
                            InkWell(
                              onTap: increaseCount,
                              splashColor: AllColors.transparent,
                              highlightColor: AllColors.transparent,
                              child: Container(
                                height: 22,
                                width: 22,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AllColors.buttonOrange),
                                child: Icon(Icons.add,
                                    size: 15, color: AllColors.appbarWhite),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
