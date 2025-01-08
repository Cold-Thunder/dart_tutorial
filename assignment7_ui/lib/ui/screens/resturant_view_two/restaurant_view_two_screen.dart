import 'package:assignment7_ui/config/models/popular_item_card_model.dart';
import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/config/utiles/texts/all_texts.dart';
import 'package:assignment7_ui/ui/screens/food_details_screen_two/widgets/top_grey_card.dart';
import 'package:assignment7_ui/ui/screens/resturant_view_two/widgets/activities.dart';
import 'package:assignment7_ui/ui/screens/resturant_view_two/widgets/appbar_action_button.dart';
import 'package:assignment7_ui/ui/screens/resturant_view_two/widgets/food_type_button.dart';
import 'package:assignment7_ui/ui/widgets/back_icon.dart';
import 'package:assignment7_ui/ui/widgets/popular_items_widget.dart';
import 'package:flutter/material.dart';

class RestaurantViewTwoScreen extends StatefulWidget {
  const RestaurantViewTwoScreen({super.key});

  @override
  State<RestaurantViewTwoScreen> createState() => _RestaurantViewTwoScreenState();
}

class _RestaurantViewTwoScreenState extends State<RestaurantViewTwoScreen> {
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
        body:Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TopGreyCard(),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Activities(),
                        const SizedBox(height: 10),
                        Text(
                            AllTexts.spicyRestaurant,
                            style: TextStyles.profileNameStyle
                        ),
                        const SizedBox(height: 10),
                        // description
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
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: GridView.builder(
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 20,
                                  mainAxisSpacing: 15
                              ),
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: burgers.length,
                              itemBuilder: (context, index){
                                return PopularItemsWidget(model: burgers[index]);
                              }
                          ),
                        ),
                        const SizedBox(height: 20),
                      ]
                    ),
                  ),


                ],
              ),
            ),
            Positioned(
              top: 40,
              child: SizedBox(
                width: width*0.95,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BackIcon(color: AllColors.backIconGrey),
                    AppbarActionButton(),
                  ],
                ),
              ),
            )
          ],
        )
    );
  }
}
