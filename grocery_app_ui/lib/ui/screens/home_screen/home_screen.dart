import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app_ui/config/models/category_card_model.dart';
import 'package:grocery_app_ui/config/models/product_model.dart';
import 'package:grocery_app_ui/config/utiles/all_colors.dart';
import 'package:grocery_app_ui/config/utiles/all_images.dart';
import 'package:grocery_app_ui/config/utiles/all_texts.dart';
import 'package:grocery_app_ui/config/utiles/methods/navbar_item_indicator_clipper.dart';
import 'package:grocery_app_ui/config/utiles/styles/all_text_styles.dart';
import 'package:grocery_app_ui/ui/screens/home_screen/widgets/banner_ad.dart';
import 'package:grocery_app_ui/ui/screens/home_screen/widgets/custom_bottom_navigation_bar.dart';
import 'package:grocery_app_ui/ui/screens/home_screen/widgets/heading_section.dart';
import 'package:grocery_app_ui/ui/screens/home_screen/widgets/home_dropdown_button.dart';
import 'package:grocery_app_ui/ui/screens/home_screen/widgets/search_section.dart';
import 'package:grocery_app_ui/ui/widgets/category_card.dart';
import 'package:grocery_app_ui/ui/widgets/product_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();

  late String address = AllTexts.homeAddress;

  int clickedInd = 0;
  List<CategoryCardModel> categoryCards = AllTexts.categoryCards;
  List<ProductModel> productLists = AllTexts.productsCards;


  addressChanger(String value) {
    setState(() {
      address = value;
    });
  }

  navigatingFunction(int index){
    setState(() {
      clickedInd = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AllColors.white,
      appBar: AppBar(
          // leading section
          leading: Container(
              padding: const EdgeInsets.all(5),
              height: 24,
              width: 24,
              child: SvgPicture.asset(
                AllImages.locationSvg,
                height: 24,
                width: 24,
              )),
          // drop down title section
          title: HomeDropdownButton(address: address, func: addressChanger),
          titleTextStyle: AllTextStyles.socialLogBtnStyle,
          titleSpacing: 5,
          leadingWidth: 40,
          // cart icon section
          actions: [
            InkWell(
                onTap: () {},
                splashColor: AllColors.transparent,
                highlightColor: AllColors.transparent,
                child: SvgPicture.asset(
                  AllImages.cartSvg,
                  height: 24,
                  width: 24,
                )),
            SizedBox(width: 15)
          ]),
      bottomNavigationBar: CustomBottomNavigationBar(
          clickedInd: clickedInd,
        itemFunc: navigatingFunction,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          width: width,
          child: Column(
            children: [
              const SizedBox(height: 10),
              SearchSection(
                controller: _searchController,
              ),
              const SizedBox(height: 10),
              // category heading
              HeadingSection(title: AllTexts.categoryHeading),
              const SizedBox(height: 10),
              // category cards section
              SizedBox(
                width: width,
                child: Wrap(
                  alignment: WrapAlignment.spaceBetween,
                  runSpacing: 10,
                  children: categoryCards.map((item){
                    return CategoryCard(model: item, func: navigatingFunction);
                  }).toList(),
                )
              ),
              const SizedBox(height: 20),
              // ad section
              BannerAd(),
              const SizedBox(height: 20),
              // best deal section
              HeadingSection(title: AllTexts.bestDeal),
              SizedBox(
                width: width,
                height: 240,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: productLists.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index){
                    return ProductCard(model: productLists[index]);
                  }
                )
              ),

            ],
          ),
        ),
      ),
    );
  }
}
