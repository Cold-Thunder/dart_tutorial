import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/all_texts.dart';
import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/ui/screens/favourit_screen/pages/food_items.dart';
import 'package:assignment7_ui/ui/screens/favourit_screen/pages/restaurents_pages.dart';
import 'package:assignment7_ui/ui/widgets/app_bar_title_widget.dart';
import 'package:assignment7_ui/ui/widgets/back_icon.dart';
import 'package:flutter/material.dart';

class FavouriteScreen extends StatefulWidget {

  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> with SingleTickerProviderStateMixin{
  late TabController _tabController;

  @override
  void initState(){
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose(){
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackIcon(color: AllColors.backIconGrey),
          title: AppBarTitleWidget(title: AllTexts.favourites),
        bottom: TabBar(
          controller: _tabController,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: AllColors.buttonOrange,
            indicatorWeight: 1,
            labelStyle: TextStyles.elevatedButtonStyle.copyWith(color: AllColors.buttonOrange),
            unselectedLabelStyle: TextStyles.elevatedButtonStyle.copyWith(
              color: AllColors.inactiveTypeGrey
            ),
            splashFactory: NoSplash.splashFactory,
            tabs: [
               Tab(
                 text: AllTexts.restaurants,
               ),
              Tab(
                text: AllTexts.foodItems
              )
            ]
        )
      ),
      body: TabBarView(
          controller: _tabController,
          children: [
            RestaurantsPage(),
            FoodItems()
          ]
      )
    );
  }
}
