import 'package:assignment7_ui/config/models/popular_item_card_model.dart';
import 'package:assignment7_ui/config/models/resturant_model.dart';
import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/config/utiles/texts/all_texts.dart';
import 'package:assignment7_ui/ui/screens/resturant_view_one/widgets/activities.dart';
import 'package:assignment7_ui/ui/screens/resturant_view_one/widgets/appbar_action_button.dart';
import 'package:assignment7_ui/ui/screens/resturant_view_one/widgets/food_type_button.dart';
import 'package:assignment7_ui/ui/widgets/app_bar_title_widget.dart';
import 'package:assignment7_ui/ui/widgets/back_icon.dart';
import 'package:assignment7_ui/ui/widgets/grey_card.dart';
import 'package:assignment7_ui/ui/widgets/popular_items_widget.dart';
import 'package:flutter/material.dart';

class RestaurantViewOneScreen extends StatefulWidget {
  final RestaurantModel model;
  const RestaurantViewOneScreen({required this.model, super.key});

  @override
  State<RestaurantViewOneScreen> createState() => _RestaurantViewOneScreenState();
}

class _RestaurantViewOneScreenState extends State<RestaurantViewOneScreen> {
  List<String> foodItems = AllTexts.foods;
  List<PopularItemCardModel> burgers = AllTexts.burgers;

  List<bool> selects = [true, false, false, false];

  selectedFunction(int ind){
    setState((){
      for(int i = 0; i < selects.length; i++){
        if(i == ind){
          selects[i] = true;
        }else {
          selects[i] = false;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: BackIcon(color: AllColors.backIconGrey),
        title: AppBarTitleWidget(title: AllTexts.restaurantView),
        actions: [
            AppbarActionButton(),
          const SizedBox(width: 15)
        ]
      ),
        body:SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: GreyCard(height: 150, width: width, borderRad: 32,image: widget.model.image),
                ),
                const SizedBox(height: 20),
                // restaurant names
                Text(
                  widget.model.name,
                  style: TextStyles.profileNameStyle
                ),
                // restaurant descriptions
                SizedBox(
                  width: width*0.8,
                  child: Text(
                    AllTexts.restaurantDes,
                    style: TextStyles.hintTextStyle,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 20),
                Activities(),
                const SizedBox(height: 20),
                SizedBox(
                  height: 45,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: foodItems.length,
                    itemBuilder: (context, index){
                      return FoodTypeButton(
                          index: index,
                          title: foodItems[index],
                          selected: selects[index],
                        selectedFunc: selectedFunction,
                      );
                    },
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                    "${AllTexts.burger}(${burgers.length})",
                    style: TextStyles.headingTextStyle
                ),
                const SizedBox(height: 20),
                // food items
                LayoutBuilder(
                  builder: (context, constraints){
                    int crossCount = constraints.maxWidth < 320 ? 1 : 2;
                    int crossCountTwo = constraints.maxWidth < 650 ? crossCount : 4;
                    int crossCountThree = constraints.maxWidth < 980 ? crossCountTwo : 6;
                    return Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount:crossCountThree,
                              mainAxisExtent: 174,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20
                          ),
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: burgers.length,
                          itemBuilder: (context, index){
                            return PopularItemsWidget(model: burgers[index]);
                          }
                      ),
                    );
                  }
                ),
                const SizedBox(height: 20),
                
              ],
            ),
          ),
        )
    );
  }
}
