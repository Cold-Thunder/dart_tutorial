import 'package:assignment7_ui/config/models/popular_item_card_model.dart';
import 'package:assignment7_ui/config/models/resturant_model.dart';
import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/images/all_images.dart';
import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/config/utiles/texts/all_texts.dart';
import 'package:assignment7_ui/ui/screens/search_screen/search_screen.dart';
import 'package:assignment7_ui/ui/widgets/icon_buttons.dart';
import 'package:assignment7_ui/ui/widgets/popular_items_widget.dart';
import 'package:assignment7_ui/ui/widgets/back_icon.dart';
import 'package:assignment7_ui/ui/widgets/open_rest_card.dart';
import 'package:assignment7_ui/ui/screens/search_screen/widgets/heading_widget.dart';
import 'package:flutter/material.dart';

class FoodBusinessScreen extends StatefulWidget {
  final String? foodType;
  const FoodBusinessScreen({this.foodType, super.key});

  @override
  State<FoodBusinessScreen> createState() => _FoodBusinessScreenState();
}

class _FoodBusinessScreenState extends State<FoodBusinessScreen> {
  final List<PopularItemCardModel> popularItems = AllTexts.popularItems;
  final List<RestaurantModel> openRestaurants = AllTexts.openRestaurantsList;
  final List<String> categoryItems = AllTexts.categories;
  String dropdownItem = AllTexts.all;


  searchIconFunc(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchScreen()));
  }

  @override
  void initState(){
    super.initState();

    if(widget.foodType != null){
      dropdownItem= widget.foodType!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackIcon(color: AllColors.backIconGrey),
          // drop down title
          title: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 17),
              height: 45,
              decoration: BoxDecoration(
                  color: AllColors.appbarWhite,
                  borderRadius: BorderRadius.circular(33),
                  border: Border.all(width: 1, color: AllColors.menuGrey)),
              child: DropdownButton(
                value: dropdownItem,
                elevation: 3,
                dropdownColor: AllColors.appbarWhite,
                underline: SizedBox(),
                iconEnabledColor: AllColors.buttonOrange,
                onChanged: (value) {
                  setState(() {
                    dropdownItem = value!;
                  });
                },
                // category items
                items: categoryItems.map((item){
                  return  DropdownMenuItem(
                    value: item,
                    child: Text(
                      item,
                      style: TextStyles.profileNameStyle.copyWith(fontSize: 12),
                    ),
                  );
                }).toList(),
              ),),
          actions: [
            IconButtons(
              iconSvg: AllImages.searchWhiteIcon,
              iconFunc: searchIconFunc,
            ),
            const SizedBox(width: 10),
            IconButtons(
              iconSvg: AllImages.settingMenuIcon,
              color: AllColors.backIconGrey,
            ),
            const SizedBox(width: 10),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(spacing: 20, children: [
                HeadingWidget(title: AllTexts.popularBurgers),
                // const SizedBox(height: 20),
                LayoutBuilder(builder: (context, constraints) {
                  int crossCount = constraints.maxWidth < 320 ? 1 : 2;
                  int crossCountTwo =
                      constraints.maxWidth < 650 ? crossCount : 4;
                  int crossCountThree =
                      constraints.maxWidth < 980 ? crossCountTwo : 6;
                  return GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: crossCountThree,
                          mainAxisExtent: 174,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20),
                      shrinkWrap: true,
                      itemCount: popularItems.length,
                      itemBuilder: (context, index) {
                        return PopularItemsWidget(model: popularItems[index]);
                      });
                }),
                HeadingWidget(title: AllTexts.openResturants),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: openRestaurants.length,
                    itemBuilder: (context, index) {
                      return OpenRestCard(
                        model: openRestaurants[index],
                      );
                    },
                  ),
                )
              ])),
        ));
  }
}
