import 'package:assignment7_ui/config/models/popular_fast_food_model.dart';
import 'package:assignment7_ui/config/models/resturant_model.dart';
import 'package:assignment7_ui/config/utiles/texts/all_texts.dart';
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
  final List<PopularFastFoodModel> popularFastFoods = AllTexts.popularFastFoods;

  void keyword(String keyValue){
      _controller.text = keyValue;
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: BackIcon(color: AllColors.backIconGrey),
        title: AppBarTitleWidget(title: AllTexts.search),
        actions: [
          CartButton(orderScreen: OrdersScreen(),)
        ]
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: width,
          child: Column(
            children: [
              const SizedBox(height: 20),
              // search bar section
              SearchBarCustWidget(controller: _controller),
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
                  itemBuilder: (context, index){
                    return KeywordBox(title: keywordList[index], keyValueFunction: keyword,);
                  },
                )
              ),
              const SizedBox(height: 20),
              // suggest restaurant heading
              HeadingWidget(title: AllTexts.suggestedRestaurant),
              const SizedBox(height: 10),
              // suggest restaurant section
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                height: 230,
                child: ListView.builder(
                  itemCount: suggestRestaurants.length,
                  itemBuilder: (context, index){
                    return SuggestRestaurantCard(model: suggestRestaurants[index]);
                  },
                )
              ),
              const SizedBox(height: 20),
              // popular fast food heading
              HeadingWidget(title: AllTexts.populerFastFood),
              const SizedBox(height: 20),
              // popular fast food section
              Container(
                padding: const EdgeInsets.only(left: 15),
                height: 180,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: popularFastFoods.length,
                  itemBuilder: (context, index){
                  return FastFoodCard(model: popularFastFoods[index]);
                },),
              ),

            ],
          )
        )
      )
    );
  }
}
