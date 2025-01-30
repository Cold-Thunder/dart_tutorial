import 'package:assignment7_ui/config/models/resturant_model.dart';
import 'package:assignment7_ui/config/utiles/all_texts.dart';
import 'package:assignment7_ui/ui/screens/search_screen/widgets/heading_widget.dart';
import 'package:assignment7_ui/ui/widgets/open_rest_card.dart';
import 'package:flutter/material.dart';

class OpenRestaurantsPage extends StatelessWidget {
  final List<RestaurantModel> openRestaurants;

  const OpenRestaurantsPage({required this.openRestaurants, super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
          padding: const EdgeInsets.all(15),
        child: Column(
          children: [
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
            ),
          ]
        )
      ),

    );
  }
}
