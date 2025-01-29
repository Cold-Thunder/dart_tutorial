import 'package:assignment7_ui/config/models/popular_item_card_model.dart';
import 'package:assignment7_ui/config/models/resturant_model.dart';
import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/config/utiles/all_texts.dart';
import 'package:assignment7_ui/ui/screens/order_screen/orders_screen.dart';
import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/ui/widgets/app_bar_title_widget.dart';
import 'package:assignment7_ui/ui/widgets/back_icon.dart';
import 'package:assignment7_ui/ui/screens/home_screens/widgets/cart_button.dart';
import 'package:assignment7_ui/ui/screens/search_screen/widgets/fast_food_card.dart';
import 'package:assignment7_ui/ui/screens/search_screen/widgets/heading_widget.dart';
import 'package:assignment7_ui/ui/screens/search_screen/widgets/keyword_box.dart';
import 'package:assignment7_ui/ui/screens/search_screen/widgets/search_bar_cust_widget.dart';
import 'package:assignment7_ui/ui/screens/search_screen/widgets/suggest_restaurant_card.dart';
import 'package:assignment7_ui/ui/widgets/popular_items_widget.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _controller = TextEditingController();

  final List<String> keywordList = AllTexts.keywords;
  final List<RestaurantModel> suggestRestaurants = AllTexts.suggestRestaurants;
  final List<PopularItemCardModel> popularFastFoods = AllTexts.popularFastFoods;

  final List<PopularItemCardModel> allFoods = AllTexts.allFoodItems;
  List<PopularItemCardModel> searchedItems = [];

  bool showOthers = true;

  // keyword method
  void keyword(String keyValue) {
    _controller.text = keyValue;
  }

  // search icon method and searching
  searchIconMethod() {
    setState(() {
      showOthers = false;
      searchedItems = allFoods
          .where(
            (item) =>
            // converting to lowercase then checking contains or not
                item.tag!.toLowerCase().contains(
                  _controller.text.toString().toLowerCase(),
                ) ||
                item.title.toLowerCase().contains(_controller.text.toString().toLowerCase()),
          )
          .toList();
    });
  }

  clearIconMethod(){
    setState(() {
      showOthers = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          leading: BackIcon(color: AllColors.backIconGrey),
          title: AppBarTitleWidget(title: AllTexts.search),
          actions: [
            CartButton(
              orderScreen: OrdersScreen(),
            ),
            const SizedBox(width: 15)
          ]),
      body: SingleChildScrollView(
        child: SizedBox(
          width: width,
          child: Column(
            children: [
              const SizedBox(height: 20),
              // search bar section
              SearchBarCustWidget(
                controller: _controller,
                searchIconFunc: searchIconMethod,
                clearIconFunc: clearIconMethod
              ),
              // recent keyword heading
              HeadingWidget(title: AllTexts.recentKeyword),
              const SizedBox(height: 10),
              // keyword section
              Container(
                  padding: const EdgeInsets.only(left: 15),
                  height: 46,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: keywordList.length,
                    itemBuilder: (context, index) {
                      return KeywordBox(
                        title: keywordList[index],
                        keyValueFunction: keyword,
                      );
                    },
                  )),
              const SizedBox(height: 20),
              // suggest restaurant heading
              Visibility(
                visible: showOthers == true,
                child: HeadingWidget(title: AllTexts.suggestedRestaurant),
              ),
              SizedBox(height: showOthers ? 10 : 0),
              // suggest restaurant section
              Visibility(
                visible: showOthers == true,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  height: 230,
                  child: ListView.builder(
                    itemCount: suggestRestaurants.length,
                    itemBuilder: (context, index) {
                      return SuggestRestaurantCard(
                          model: suggestRestaurants[index]);
                    },
                  ),
                ),
              ),
              SizedBox(height: showOthers ? 20 : 0),
              // popular fast food heading
              Visibility(
                visible: showOthers == true,
                child: HeadingWidget(title: AllTexts.populerFastFood),
              ),
              SizedBox(height: showOthers ? 20 : 0),
              // popular fast food section
              Visibility(
                visible: showOthers == true,
                child: Container(
                  padding: const EdgeInsets.only(left: 15),
                  height: 180,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: popularFastFoods.length,
                    itemBuilder: (context, index) {
                      return FastFoodCard(model: popularFastFoods[index]);
                    },
                  ),
                ),
              ),
              Visibility(
                visible: showOthers == false,
                child: // food items
                    LayoutBuilder(builder: (context, constraints) {
                  int crossCount = constraints.maxWidth < 320 ? 1 : 2;
                  int crossCountTwo =
                      constraints.maxWidth < 650 ? crossCount : 4;
                  int crossCountThree =
                      constraints.maxWidth < 980 ? crossCountTwo : 6;
                  return Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: crossCountThree,
                            mainAxisExtent: 174,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20),
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: searchedItems.length,
                        itemBuilder: (context, index) {
                          return PopularItemsWidget(
                              model: searchedItems[index]);
                        }),
                  );
                }),
              ),
              Visibility(
                visible: searchedItems.isEmpty,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    AllTexts.notFound,
                    style: TextStyles.headingTextStyle
                  )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
