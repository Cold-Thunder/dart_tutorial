import 'package:assignment7_ui/config/models/popular_item_card_model.dart';
import 'package:assignment7_ui/config/utiles/all_texts.dart';
import 'package:assignment7_ui/ui/screens/search_screen/widgets/heading_widget.dart';
import 'package:assignment7_ui/ui/widgets/popular_items_widget.dart';
import 'package:flutter/material.dart';

class FoodsPage extends StatelessWidget {
  final String dropdownItem;
  final List<PopularItemCardModel> selectedItems;
  const FoodsPage({required this.dropdownItem, required this.selectedItems, super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            HeadingWidget(title: '${AllTexts.popular} $dropdownItem'),
            // const SizedBox(height: 20),
            // food items will be shown here
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
                  itemCount: selectedItems.length,
                  itemBuilder: (context, index) {
                    return PopularItemsWidget(model: selectedItems[index]);
                  });
            }),
          ],
        )
      )
    );
  }
}
