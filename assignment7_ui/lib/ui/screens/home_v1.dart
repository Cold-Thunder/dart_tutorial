import 'dart:async';

import 'package:assignment7_ui/ui/screens/home_v2.dart';
import 'package:assignment7_ui/ui/screens/orders_screen.dart';
import 'package:assignment7_ui/config/utiles/texts/home_screen_texts.dart';
import 'package:assignment7_ui/ui/widgets/custom_dialoug.dart';
import 'package:assignment7_ui/ui/widgets/heading_section.dart';
import 'package:assignment7_ui/ui/widgets/home_screen_widgets/appbar_menubar.dart';
import 'package:assignment7_ui/ui/widgets/home_screen_widgets/cart_button.dart';
import 'package:assignment7_ui/ui/widgets/home_screen_widgets/delivery_to_section.dart';
import 'package:assignment7_ui/ui/widgets/home_screen_widgets/home_one_cat_card.dart';
import 'package:assignment7_ui/ui/widgets/home_screen_widgets/home_searchbar.dart';
import 'package:assignment7_ui/ui/widgets/home_screen_widgets/home_top_title.dart';
import 'package:assignment7_ui/ui/widgets/open_rest_card.dart';
import 'package:flutter/material.dart';

class HomeV1 extends StatefulWidget{

  const HomeV1({super.key});

  @override
  State<HomeV1> createState() => _HomeV1State();
}

class _HomeV1State extends State<HomeV1> {
  final TextEditingController _controller = TextEditingController();

  List<String> cateTypes = ['All', 'Hot Dog', 'Burger'];

  List<int> openRestCounts = [1,2];

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 2), (){
      showDialog(context: context, builder: (context)=>CustomDialog());
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
       appBar: AppBar(
         leading: AppbarMenubar(nextHome: HomeV2()),
         title: DeliveryToSection(),
         actions: [
           CartButton(orderScreen: OrdersScreen(),),
           const SizedBox(width: 15)
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
                height: 80,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: cateTypes.length,
                  itemBuilder: (context, index){
                    return HomeOneCatCard(title: cateTypes[index],);
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