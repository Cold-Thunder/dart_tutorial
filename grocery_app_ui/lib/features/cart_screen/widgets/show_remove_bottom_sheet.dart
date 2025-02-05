import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:grocery_app_ui/core/components/elevated_button_design.dart';
import 'package:grocery_app_ui/core/models/product_model.dart';
import 'package:grocery_app_ui/core/utiles/all_colors.dart';
import 'package:grocery_app_ui/core/utiles/all_texts.dart';
import 'package:grocery_app_ui/core/utiles/styles/all_text_styles.dart';
import 'package:grocery_app_ui/features/cart_screen/widgets/added_product.dart';
import 'package:grocery_app_ui/features/cart_screen/widgets/outline_button_design.dart';

class ShowRemoveBottomSheet extends StatelessWidget {
  ShowRemoveBottomSheet({super.key});

  final List<ProductModel> productList = AllTexts.productsCards;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
      child: Container(
        width: size.width,
        height: 303,
        padding: const EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
          color: AllColors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(15),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 3,
                  width: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: AllColors.barGrey),
                ),
              ),
              const SizedBox(height: 20),
              Text(AllTexts.removeItem, style: AllTextStyles.searchScreenHeading),
              const SizedBox(height: 20),
              Divider(
                height: 1,
                color: AllColors.barGrey
              ),
              const SizedBox(height: 20),
              AddedProduct(model: productList[0]),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlineButtonDesign(),
                  ElevatedButtonDesign(title: AllTexts.remove, givenWidth: size.width*0.42)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
