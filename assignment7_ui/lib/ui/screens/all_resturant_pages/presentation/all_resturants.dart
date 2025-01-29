import 'package:assignment7_ui/config/models/resturant_model.dart';
import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/texts/all_texts.dart';
import 'package:assignment7_ui/ui/widgets/app_bar_title_widget.dart';
import 'package:assignment7_ui/ui/widgets/back_icon.dart';
import 'package:assignment7_ui/ui/widgets/open_rest_card.dart';
import 'package:flutter/material.dart';

class AllResturants extends StatelessWidget {
  AllResturants({super.key});

  final List<RestaurantModel> allRestaurants = AllTexts.allRestaurantsList;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: BackIcon(color: AllColors.backIconGrey),
        title: AppBarTitleWidget(title: AllTexts.allResturants),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15),
          width: width,
          child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: allRestaurants.length,
            itemBuilder: (context, index) {
              return OpenRestCard(model: allRestaurants[index]);
            },
          ),
        ),
      ),
    );
  }
}
