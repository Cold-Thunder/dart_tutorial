import 'package:flutter/material.dart';
import 'package:grocery_app_ui/features/best_deal_screen/widgets/bottom_count_bar.dart';
import '../../../core/utiles/all_colors.dart';
import '../../../core/utiles/all_texts.dart';
import '../../core/components/back_arrow_button.dart';
import '../../core/components/product_card.dart';
import '../../core/components/search_icon_button.dart';
import '../../core/models/product_model.dart';

class BestDealScreen extends StatefulWidget {

  const BestDealScreen({super.key});

  @override
  State<BestDealScreen> createState() => _BestDealScreenState();
}

class _BestDealScreenState extends State<BestDealScreen> {

  final List<ProductModel> bestDealProducts = AllTexts.bestDealsCards;

  List<ProductModel> addedItems = [];
  double totalPrice = 0;

  // adding items in added item list
  addButtonFunc(ProductModel model){
    setState((){
      addedItems.add(model);
      totalPrice += double.tryParse(model.presPrice) ?? 0;
    });
  }

  // removing items from the list
  removeItemFromList(ProductModel model){
    setState((){
      for(int i = 0; i < addedItems.length; i++){
        if(addedItems[i].id == model.id){
          addedItems.removeAt(i);
          totalPrice -= double.tryParse(model.presPrice) ?? 0;
          break;
        }
      }
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
        child: BottomCountBar(items: addedItems, totalPrice: totalPrice,),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        width: width,
              child:GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: width < 350 ? 1 : width < 540 ? 2 : width <720 ? 3 : 4,
                      mainAxisExtent: 240,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 10
                  ),
                  itemCount: bestDealProducts.length,
                  itemBuilder: (context, index){
                    return ProductCard(model: bestDealProducts[index], addFunc: addButtonFunc, removeFunc: removeItemFromList,);
                  }
              ),
      ),
    );
  }
}
