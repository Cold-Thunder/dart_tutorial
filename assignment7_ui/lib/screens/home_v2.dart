import 'package:assignment7_ui/models/home_v2_cat_model.dart';
import 'package:assignment7_ui/utiles/texts/home_screen_texts.dart';
import 'package:assignment7_ui/widgets/heading_section.dart';
import 'package:assignment7_ui/widgets/home_screen_widgets/appbar_menubar.dart';
import 'package:assignment7_ui/widgets/home_screen_widgets/cart_button.dart';
import 'package:assignment7_ui/widgets/home_screen_widgets/delivery_to_section.dart';
import 'package:assignment7_ui/widgets/home_screen_widgets/home_searchbar.dart';
import 'package:assignment7_ui/widgets/home_screen_widgets/home_top_title.dart';
import 'package:assignment7_ui/widgets/home_screen_widgets/homev2_cate_card.dart';
import 'package:assignment7_ui/widgets/home_screen_widgets/open_rest_card.dart';
import 'package:flutter/material.dart';

class HomeV2 extends StatelessWidget{
  final TextEditingController _controller = TextEditingController();
  HomeV2({super.key});

  List<HomeV2CatModel> cateTypes = [
    HomeV2CatModel(title: HomeScreenText.pizza, price: HomeScreenText.price),
    HomeV2CatModel(title: HomeScreenText.burger, price: HomeScreenText.price),
    HomeV2CatModel(title: HomeScreenText.pizza, price: HomeScreenText.price),
    ];
  List<int> openRestCounts = [1,2, 3];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: AppbarMenubar(),
        title: DeliveryToSection(),
        actions: [
          CartButton(),
        ],
      ),
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
              HeadingSection(title: HomeScreenText.allCate),
              const SizedBox(height: 20),
              // all categories
              SizedBox(
                  height: 192,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: cateTypes.length,
                      itemBuilder: (context, index){
                        return HomeV2CateCard(model: cateTypes[index]);
                      }
                  )
              ),
              const SizedBox(height: 20),
              // open restaurant heading
              HeadingSection(title: HomeScreenText.openRest),
              const SizedBox(height: 15),
              Container(
                padding: const EdgeInsets.only(right: 15),
                height: 500,
                child: ListView.builder(
                  itemCount: openRestCounts.length,
                  itemBuilder: (context, index){
                    return OpenRestCard();
                  },),
              ),

            ],
          ),
        ),
      ),
    );
  }
}