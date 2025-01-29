import 'package:assignment7_ui/config/models/home_page_category_model.dart';
import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/ui/screens/food_business_screen/food_business_screen.dart';
import 'package:assignment7_ui/ui/widgets/grey_card.dart';
import 'package:flutter/material.dart';

class HomeOneCatCard extends StatefulWidget {
  final int index;
  final HomePageCategoryModel model;
  final int clickedInd;
  final Function clickedFunc;
  const HomeOneCatCard({required this.model, required this.index, required this.clickedInd, required this.clickedFunc,  super.key});

  @override
  State<HomeOneCatCard> createState() => _HomeOneCatCardState();
}

class _HomeOneCatCardState extends State<HomeOneCatCard> {


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 60,
      child:InkWell(
        borderRadius: BorderRadius.circular(39),
        onTap: (){
          // called clicked function
          widget.clickedFunc(widget.index);
          // navigating to food business screen
          Navigator.push(context, MaterialPageRoute(
            builder: (context)=>FoodBusinessScreen(foodType: widget.model.title,)
          ));
        },
        child: Card(
          color: widget.index == widget.clickedInd ? AllColors.selectedYellow : AllColors.appbarWhite,
          elevation: 6,
          shadowColor: AllColors.shadowColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 8),
            child: Row(
              children: [
                GreyCard(height: 44, width: 44, borderRad: 26, image: widget.model.image),
                const SizedBox(width: 10),

               Text(
                   widget.model.title,
                    style: TextStyles.elevatedButtonStyle.copyWith(
                      color: AllColors.headingBlack
                    )
                  ),
              ],
            ),
          )
        ),
      ),
    );
  }
}
