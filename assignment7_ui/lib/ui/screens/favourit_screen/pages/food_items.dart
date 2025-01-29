import 'package:assignment7_ui/config/models/popular_item_card_model.dart';
import 'package:assignment7_ui/config/utiles/all_texts.dart';
import 'package:assignment7_ui/ui/widgets/popular_items_widget.dart';
import 'package:flutter/material.dart';

class FoodItems extends StatelessWidget {
  FoodItems({super.key});
  final List<PopularItemCardModel> items = AllTexts.popularItems;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SizedBox(
          width: size.width,
          child: // food items will be shown here
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
                physics: NeverScrollableScrollPhysics(),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return PopularItemsWidget(model: items[index]);
                });
          }),
        ),
      )
    );
  }
}
