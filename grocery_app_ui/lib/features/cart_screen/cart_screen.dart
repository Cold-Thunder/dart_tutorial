import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app_ui/core/components/back_arrow_button.dart';
import 'package:grocery_app_ui/core/components/product_card.dart';
import 'package:grocery_app_ui/core/models/product_model.dart';
import 'package:grocery_app_ui/core/utiles/all_colors.dart';
import 'package:grocery_app_ui/core/utiles/all_images.dart';
import 'package:grocery_app_ui/core/utiles/all_texts.dart';
import 'package:grocery_app_ui/core/utiles/styles/all_text_styles.dart';
import 'package:grocery_app_ui/features/cart_screen/widgets/added_product.dart';
import 'package:grocery_app_ui/features/cart_screen/widgets/address_section.dart';
import 'package:grocery_app_ui/features/cart_screen/widgets/heading.dart';
import 'package:grocery_app_ui/features/cart_screen/widgets/pay_button_section.dart';
import 'package:grocery_app_ui/features/cart_screen/widgets/price_show_section.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});

  final List<ProductModel> productList = AllTexts.productsCards;

  double totalPrice = 0;
  double discount = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AllColors.white,
      appBar:
          AppBar(leading: BackArrowButton(), title: Text(AllTexts.checkout)),
      body: SingleChildScrollView(
        child: SizedBox(
          width: size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Column(
                  children: [
                    AddedProduct(model: productList[0]),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // checkout heading
              Heading(title: AllTexts.beforeYouCheck),
              const SizedBox(height: 20),
              // checkout  products
              SizedBox(
                  height: 250,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: productList.length,
                      itemBuilder: (context, index) {
                        return ProductCard(model: productList[index]);
                      })),
              //apply coupon section
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
                child: Row(
                  spacing: 10,
                  children: [
                    Container(
                        alignment: Alignment.center,
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 1, color: AllColors.mainGreen)),
                        child: Text('%', style: AllTextStyles.skipTextStyle)),
                    Text(AllTexts.applyCoupon,
                        style: AllTextStyles.socialLogBtnStyle),
                    Spacer(),
                    InkWell(
                      onTap: () {},
                      child: Transform.rotate(
                        angle: -1.5708,
                        child: SizedBox(
                          height: 30,
                          width: 20,
                          child: SvgPicture.asset(AllImages.arrowDownSvg,
                              height: 30, width: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Divider(height: 1, color: AllColors.closerGrey),
              ),
              // price section
              Container(
                padding: const EdgeInsets.all(15),
                child: Column(
                  spacing: 8,
                  children: [
                    PriceShowSection(
                        price: totalPrice, title: AllTexts.itemTotal),
                    PriceShowSection(price: discount, title: AllTexts.discount),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AllTexts.deliveryFree,
                          style: AllTextStyles.skipTextStyle
                              .copyWith(fontSize: 16),
                        ),
                        Text(
                          AllTexts.free,
                          style: AllTextStyles.skipTextStyle
                              .copyWith(fontSize: 16),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Divider(height: 1, color: AllColors.closerGrey),
              ),
              const SizedBox(height: 15),
              // ground price section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AllTexts.groundTotal,
                      style: AllTextStyles.searchScreenHeading
                          .copyWith(fontSize: 18),
                    ),
                    Text(
                      '\$${totalPrice - discount}',
                      style: AllTextStyles.searchScreenHeading
                          .copyWith(fontSize: 18),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              // address section
              AddressSection(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Divider(height: 1, color: AllColors.closerGrey),
              ),
              // pay button section
              PayButtonSection(price: totalPrice - discount)
            ],
          ),
        ),
      ),
    );
  }
}
