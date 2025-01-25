import 'package:flutter/material.dart';
import 'package:grocery_app_ui/config/models/product_model.dart';
import 'package:grocery_app_ui/config/utiles/all_colors.dart';
import 'package:grocery_app_ui/config/utiles/all_texts.dart';
import 'package:grocery_app_ui/ui/widgets/back_arrow_button.dart';
import 'package:grocery_app_ui/ui/widgets/product_card.dart';
import 'package:grocery_app_ui/ui/widgets/search_icon_button.dart';

class BestDealScreen extends StatefulWidget {

  const BestDealScreen({super.key});

  @override
  State<BestDealScreen> createState() => _BestDealScreenState();
}

class _BestDealScreenState extends State<BestDealScreen> {

  final List<ProductModel> bestDealProducts = AllTexts.bestDealsCards;

  List<ProductModel> addedItems = [];

  // adding items in added item list
  addButtonFunc(ProductModel model){
    setState((){
      addedItems.add(model);
    });
  }

  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AllColors.white,
        appBar: AppBar(
          leading: BackArrowButton(),
          title: Text(AllTexts.bestDeal),
          centerTitle: true,
          actions: [
            SearchIconButton(),
            SizedBox(width: 15)
          ],
        ),
      bottomNavigationBar: Visibility(
        visible: addedItems.isNotEmpty,
        child: Container(
          height: 60,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        width: width,
              child:GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: width < 350 ? 1 : width < 540 ? 2 : width <720 ? 3 : 4,
                      mainAxisExtent: 240,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10
                  ),
                  itemCount: bestDealProducts.length,
                  itemBuilder: (context, index){
                    return ProductCard(model: bestDealProducts[index], addFunc: addButtonFunc,);
                  }
              ),
      ),
    );
  }
}
