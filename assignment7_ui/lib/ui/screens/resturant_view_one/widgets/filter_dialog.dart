import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/config/utiles/all_texts.dart';
import 'package:assignment7_ui/ui/screens/resturant_view_one/widgets/close_button_widget.dart';
import 'package:assignment7_ui/ui/screens/resturant_view_one/widgets/filter_dialog_title.dart';
import 'package:assignment7_ui/ui/screens/resturant_view_one/widgets/filter_rating_card.dart';
import 'package:assignment7_ui/ui/screens/resturant_view_one/widgets/filter_time_select_button.dart';
import 'package:assignment7_ui/ui/screens/resturant_view_one/widgets/offer_card.dart';
import 'package:assignment7_ui/ui/screens/resturant_view_one/widgets/price_types_button.dart';
import 'package:assignment7_ui/ui/widgets/elevated_button_design.dart';
import 'package:flutter/material.dart';

class FilterDialog extends StatefulWidget {
  const FilterDialog({super.key});

  @override
  State<FilterDialog> createState() => _FilterDialogState();
}

class _FilterDialogState extends State<FilterDialog> {
  List<String> offers = [AllTexts.delivery, AllTexts.pickUp, AllTexts.offer, AllTexts.onlinePayment];
  List<String> times = AllTexts.times;
  List<bool> selectedTime = [true, false, false];
  List<bool> selectedPrice = [true,false, false];
  List<bool> ratingSelected = [false, false, false, false, false];

  selectingFunc(int ind){
    setState((){
      for(int i =0; i< selectedTime.length; i++){
        if(i == ind){
          selectedTime[i] = true;
        }else{
          selectedTime[i] = false;
        }
      }
    });
  }

  selectingPriceFunc(int ind){
    setState((){
      for(int i =0; i< selectedPrice.length; i++){
        if(i == ind){
          selectedPrice[i] = true;
        }else{
          selectedPrice[i] = false;
        }
      }
    });
  }

  ratingFunc(int index){
    setState(() {
      for(int i = 0; i < 5; i++){
        if(i <= index){
          ratingSelected[i] = true;
        }else{
          ratingSelected[i] = false;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Center(
      child: Material(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: const EdgeInsets.only(left: 15,right: 15, top: 30),
          height: 649,
          width: width*0.9,
          decoration: BoxDecoration(
            color: AllColors.appbarWhite,
            borderRadius: BorderRadius.circular(12)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AllTexts.filterYour,
                    style: TextStyles.appBarTitleStyle
                  ),
                  CloseButtonWidget(),
                ],
              ),
              const SizedBox(
                height: 20
              ),
              FilterDialogTitle(title: AllTexts.offer),
              const SizedBox(
                  height: 10
              ),
              Wrap(
                children: offers.map((item){
                  return OfferCard(title: item);
                }).toList(),
              ),
              const SizedBox(
                  height: 25
              ),
              FilterDialogTitle(title: AllTexts.deliveryTime),
              const SizedBox(
                height: 10
              ),
              SizedBox(
                height: 46,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: times.length,
                    itemBuilder: (context,index){
                  return FilterTimeSelectButton(index: index, title: times[index], selected: selectedTime[index], selFunc: selectingFunc);
                })
              ),
              const SizedBox(
                  height: 25
              ),
              FilterDialogTitle(title: AllTexts.pricing),
              const SizedBox(
                  height: 10
              ),
              SizedBox(
                  height: 48,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: selectedPrice.length,
                      itemBuilder: (context,index){
                        return PriceTypesButton(index: index, title: AllTexts.dollarSign, selected: selectedPrice[index], selFunc: selectingPriceFunc);
                      })
              ),
              const SizedBox(
                  height: 25
              ),
              FilterDialogTitle(title: AllTexts.rating),
              const SizedBox(
                height: 10
              ),
              SizedBox(
                  height: 48,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context,index){
                        return FilterRatingCard(index: index, selected: ratingSelected[index], selFunc: ratingFunc);
                      })
              ),
              const SizedBox(
                  height: 25
              ),
              ElevatedButtonDesign(title: AllTexts.filter),
            ]
          )
        ),
      ),
    );
  }
}
