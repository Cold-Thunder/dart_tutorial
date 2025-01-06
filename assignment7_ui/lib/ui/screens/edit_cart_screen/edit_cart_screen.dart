import 'package:assignment7_ui/config/models/cart_item_model.dart';
import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/images/all_images.dart';
import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/config/utiles/texts/all_texts.dart';
import 'package:assignment7_ui/ui/screens/edit_cart_screen/widgets/edit_cart_bottom_section.dart';
import 'package:assignment7_ui/ui/screens/edit_cart_screen/widgets/item_card.dart';
import 'package:assignment7_ui/ui/widgets/app_bar_title_widget.dart';
import 'package:assignment7_ui/ui/widgets/back_icon.dart';
import 'package:flutter/material.dart';

class EditCartScreen extends StatefulWidget {
  const EditCartScreen({super.key});

  @override
  State<EditCartScreen> createState() => _EditCartScreenState();
}

class _EditCartScreenState extends State<EditCartScreen> {
  double _totalPrice = 0;
  bool _isEdited = false;

  final List<CartItemModel> cartList = AllTexts.cartItem;

  isEditFunc(){
    setState((){
      _isEdited = !_isEdited;
    });
  }

  increaseTotal(double price){
    setState(() {
      _totalPrice = price;
    });
  }

  @override
  void initState(){
    super.initState();
    setState(() {
      for(CartItemModel model in cartList){
        _totalPrice += model.price*model.count;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AllColors.cartBlack,
      appBar: AppBar(
        backgroundColor: AllColors.cartBlack,
        title: AppBarTitleWidget(title: AllTexts.cart, color: AllColors.appbarWhite),
        leading: BackIcon(color: AllColors.cartCardBlack, iconPng: AllImages.backWhiteIcon,),
        actions: [
          InkWell(
            splashColor: AllColors.transparent,
            highlightColor: AllColors.transparent,
            onTap: isEditFunc,
            child: Text(
              _isEdited ? AllTexts.done : AllTexts.editItem,
              style: TextStyles.cartEditTextStyle.copyWith(
                color: _isEdited ? AllColors.completedGreen : AllColors.buttonOrange,
                decorationColor: _isEdited ? AllColors.completedGreen : AllColors.buttonOrange,
              ),
            )
          ),
          const SizedBox(width: 15)
        ]
      ),
      body: SizedBox(
        width: width,
        height: height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(height: 20),
            Expanded(
                child: SingleChildScrollView(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: cartList.length,
                    itemBuilder: (context, index){
                      return ItemCard(isEdit: _isEdited, model: cartList[index], totalPrice: _totalPrice, totalPriceFunc: increaseTotal,);
                    },
                  )
                )
            ),
            Container(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom
              ),
              height: 310,
              width: width,
              decoration: BoxDecoration(
                color: AllColors.appbarWhite,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                  topRight: Radius.circular(24)
                )
              ),
              child: EditCartBottomSection(totalPrice: _totalPrice,)
            )
          ]
        ),
      )
    );
  }
}
