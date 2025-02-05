
import 'package:flutter/material.dart';
import 'package:grocery_app_ui/core/models/product_model.dart';
import 'package:grocery_app_ui/core/utiles/all_colors.dart';
import 'package:grocery_app_ui/core/utiles/styles/all_text_styles.dart';
import 'package:grocery_app_ui/features/cart_screen/widgets/incre_decre_button.dart';
import 'package:grocery_app_ui/features/cart_screen/widgets/show_remove_bottom_sheet.dart';

class AddedProduct extends StatefulWidget {
  final ProductModel model;
  const AddedProduct({required this.model, super.key});

  @override
  State<AddedProduct> createState() => _AddedProductState();
}

class _AddedProductState extends State<AddedProduct> {

  int count = 1;

  addFunc(){
    setState(() {
      count++;
    });
  }

  removeFunc(){
    if(count > 1){
      setState((){
        count--;
      });
    }else if(count == 1){
      showModalBottomSheet(
          context: context,
          barrierColor: AllColors.transparent,
          barrierLabel: 'remove item bottom sheet',
          builder: (context){
            return ShowRemoveBottomSheet();
          }
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width,
      height: 100,
      child: Row(
        spacing: 10,
        children: [
            Container(
              padding: const EdgeInsets.all(5),
              height: 90,
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AllColors.productBackGrey
              ),
              child: Image.asset(widget.model.image, height: 80,)
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // title section
                    Text(
                      widget.model.title,
                      style: AllTextStyles.socialLogBtnStyle,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      widget.model.size,
                      style: AllTextStyles.cartSizeTextStyle
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '\$${widget.model.presPrice}',
                          style: AllTextStyles.searchScreenHeading
                        ),
                        IncreDecreButton(count: count, addFunc: addFunc, removeFunc: removeFunc,)
                      ],
                    )
                  ],
                ),
              ),
            )
        ],
      )
    );
  }
}
