import 'package:assignment7_ui/models/popular_fast_food_model.dart';
import 'package:assignment7_ui/models/suggest_restaurant_model.dart';
import 'package:assignment7_ui/screens/orders_screen.dart';
import 'package:assignment7_ui/utiles/all_colors.dart';
import 'package:assignment7_ui/utiles/texts/search_screen_texts.dart';
import 'package:assignment7_ui/widgets/app_bar_title_widget.dart';
import 'package:assignment7_ui/widgets/back_icon.dart';
import 'package:assignment7_ui/widgets/home_screen_widgets/cart_button.dart';
import 'package:assignment7_ui/widgets/search_screen_wdgets/fast_food_card.dart';
import 'package:assignment7_ui/widgets/search_screen_wdgets/heading_widget.dart';
import 'package:assignment7_ui/widgets/search_screen_wdgets/keyword_box.dart';
import 'package:assignment7_ui/widgets/search_screen_wdgets/search_bar_cust_widget.dart';
import 'package:assignment7_ui/widgets/search_screen_wdgets/suggest_restaurant_card.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {

  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _controller = TextEditingController();

  final List<String> keywordList = SearchScreenTexts.keywords;
  final List<SuggestRestaurantModel> suggestRestaurants = SearchScreenTexts.suggestRestaurants;
  final List<PopularFastFoodModel> popularFastFoods = SearchScreenTexts.popularFastFoods;

  void keyword(String keyValue){
      _controller.text = keyValue;
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: BackIcon(color: AllColors.backIconGrey),
        title: AppBarTitleWidget(title: SearchScreenTexts.search),
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
              HeadingWidget(title: SearchScreenTexts.recentKeyword),
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
              HeadingWidget(title: SearchScreenTexts.suggestedRestaurant),
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
              HeadingWidget(title: SearchScreenTexts.suggestedRestaurant),
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
