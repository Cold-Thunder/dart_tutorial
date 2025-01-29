import 'package:assignment7_ui/config/models/popular_item_card_model.dart';
import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/config/utiles/texts/all_texts.dart';
import 'package:assignment7_ui/ui/screens/edit_cart_screen/edit_cart_screen.dart';
import 'package:assignment7_ui/ui/screens/food_details_screen/widgets/activities.dart';
import 'package:assignment7_ui/ui/screens/food_details_screen/widgets/circle_buttons.dart';
import 'package:assignment7_ui/ui/screens/food_details_screen/widgets/counter.dart';
import 'package:assignment7_ui/ui/screens/food_details_screen/widgets/ingredient_icon_circle.dart';
import 'package:assignment7_ui/ui/screens/food_details_screen/widgets/logo_section.dart';
import 'package:assignment7_ui/ui/screens/food_details_screen/widgets/top_section.dart';
import 'package:assignment7_ui/ui/widgets/app_bar_title_widget.dart';
import 'package:assignment7_ui/ui/widgets/back_icon.dart';
import 'package:assignment7_ui/ui/widgets/elevated_button_design.dart';
import 'package:flutter/material.dart';

class FoodDetailsScreenOne extends StatefulWidget {
  final PopularItemCardModel model;
  const FoodDetailsScreenOne({required this.model, super.key});

  @override
  State<FoodDetailsScreenOne> createState() => _FoodDetailsScreenOneState();
}

class _FoodDetailsScreenOneState extends State<FoodDetailsScreenOne> {
  List<bool> selects = [false, true, false];
  List<String> ingredientIcons = AllTexts.ingredientsIcons;
  int _count = 2;
  final double _price = 16;

  selectingFunction(int ind) {
    setState(() {
      for(int i =0; i < 3; i++){
        if(i == ind){
          selects[i] = true;
        }else{
          selects[i] = false;
        }
      }
    });
  }

  increaseFunc(){
    setState((){
      _count++;
    });
  }

  decreaseFunc(){
    setState((){
      if(_count >0){
        _count--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitleWidget(title: AllTexts.details),
        leading: BackIcon(color: AllColors.backIconGrey),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TopSection(image: widget.model.image!),
                    const SizedBox(height: 20),
                    LogoSection(),
                    const SizedBox(height: 20),
                    // heading section
                    Text(AllTexts.pizzaCalzone, style: TextStyles.profileNameStyle),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: width * 0.8,
                      child: Text(AllTexts.pizzaCalDes,
                          style: TextStyles.hintTextStyle,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis),
                    ),
                    const SizedBox(height: 20),
                    Activities(),
                    const SizedBox(height: 20),
                    // size section
                    Row(
                      spacing: 20,
                      children: [
                        Text("${AllTexts.sizeName}:",
                            style: TextStyles.inputTitleStyle),
                        CircleButtons(
                          size: '10"',
                          selected: selects[0],
                          selectFunc: selectingFunction,
                          ind: 0,
                        ),
                        CircleButtons(
                          size: '14"',
                          selected: selects[1],
                          selectFunc: selectingFunction,
                          ind: 1,
                        ),
                        CircleButtons(
                          size: '16"',
                          selected: selects[2],
                          selectFunc: selectingFunction,
                          ind: 2
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Text(
                      AllTexts.ingridents.toUpperCase(),
                      style:TextStyles.inputTitleStyle
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: ingredientIcons.map((item){
                        return IngredientIconCircle(iconSvg: item);
                      }).toList()
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
          // add to cart section
          Container(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                left: 15,
                right: 15
              ),
              height: 184,
              width: width,
              decoration: BoxDecoration(
                  color: AllColors.inputFieldWhite,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24)
                  )
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children:[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('\$${_count*_price}',
                          style: TextStyles.appBarTitleStyle.copyWith(
                              fontSize: 28
                          ),
                        ),
                        Counter(countVal: _count, increFunc: increaseFunc, decreseFunc: decreaseFunc,)
                      ],
                    ),
                    ElevatedButtonDesign(title: AllTexts.addToCart, screen: EditCartScreen(),)
                  ]
              )
          )
        ],
      ),
    );
  }
}
