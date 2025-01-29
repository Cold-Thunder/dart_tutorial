import 'dart:async';

import 'package:assignment7_ui/config/models/home_page_category_model.dart';
import 'package:assignment7_ui/config/models/resturant_model.dart';
import 'package:assignment7_ui/config/utiles/images/all_images.dart';
import 'package:assignment7_ui/config/utiles/texts/all_texts.dart';
import 'package:assignment7_ui/ui/screens/all_resturant_pages/presentation/all_resturants.dart';
import 'package:assignment7_ui/ui/screens/drawer_screen/drawer_screen.dart';
import 'package:assignment7_ui/ui/screens/food_business_screen/food_business_screen.dart';
import 'package:assignment7_ui/ui/screens/order_screen/orders_screen.dart';
import 'package:assignment7_ui/ui/widgets/custom_dialoug.dart';
import 'package:assignment7_ui/ui/widgets/heading_section.dart';
import 'package:assignment7_ui/ui/screens/home_screens/widgets/appbar_menubar.dart';
import 'package:assignment7_ui/ui/screens/home_screens/widgets/cart_button.dart';
import 'package:assignment7_ui/ui/screens/home_screens/widgets/delivery_to_section.dart';
import 'package:assignment7_ui/ui/screens/home_screens/widgets/home_one_cat_card.dart';
import 'package:assignment7_ui/ui/screens/home_screens/widgets/home_searchbar.dart';
import 'package:assignment7_ui/ui/screens/home_screens/widgets/home_top_title.dart';
import 'package:assignment7_ui/ui/widgets/open_rest_card.dart';
import 'package:flutter/material.dart';

class HomeV1 extends StatefulWidget {
  const HomeV1({super.key});

  @override
  State<HomeV1> createState() => _HomeV1State();
}

class _HomeV1State extends State<HomeV1> {
  final TextEditingController _controller = TextEditingController();

  List<HomePageCategoryModel> categories = AllTexts.categoriesModels;

  List<RestaurantModel> openRestCounts = AllTexts.openRestaurantsList;

  String selectedItem = AllTexts.all;
  int clickedInd = 0;

  clickedFunc(String item, int index){
    setState(() {
      selectedItem = item;
      clickedInd = index;
    });
  }


  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      showDialog(context: context, builder: (context) => CustomDialog());
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: AppbarManubar(),
        title: DeliveryToSection(),
        actions: [
          CartButton(
            orderScreen: OrdersScreen(),
          ),
          const SizedBox(width: 15)
        ],
      ),
      drawer: DrawerScreen(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 15),
          child: Column(
            children: [
              // greeting section
              const SizedBox(height: 15),
              HomeTopTitle(),
              const SizedBox(height: 20),
              // search bar section
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: HomeSearchbar(controller: _controller),
              ),
              const SizedBox(height: 20),
              // heading section
              HeadingSection(
                  title: AllTexts.allCate,
                  seeAllScreen: FoodBusinessScreen(foodType: selectedItem,),
              ),
              const SizedBox(height: 20),
              // all categories
              SizedBox(
                height: 80,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    // item
                    return HomeOneCatCard(
                      index: index,
                      model: categories[index],
                      clickedInd: clickedInd,
                      clickedFunc: clickedFunc,
                    );
                  },
                ),
              ),
              const SizedBox(height: 10),
              // banner ad section
              Container(
                margin: const EdgeInsets.only(right: 15),
                height: width < 650 ? width*0.46 : 650*0.46,
                width: width < 650 ? width : 650,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AllImages.bannerAd),
                    fit: BoxFit.fill
                  ),
                ),
                // child: Image.asset(AllImages.bannerAd, height: width*0.46, width: width)
              ),
              const SizedBox(height: 10),
              // open restaurant heading
              HeadingSection(
                title: AllTexts.openRest,
                seeAllScreen: AllResturants(),
              ),
              const SizedBox(height: 15),
              // open restaurants
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: openRestCounts.length,
                  itemBuilder: (context, index) {
                    return OpenRestCard(
                      model: openRestCounts[index],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
