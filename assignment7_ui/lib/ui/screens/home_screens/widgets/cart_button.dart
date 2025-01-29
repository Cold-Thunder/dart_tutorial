import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/all_images.dart';
import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartButton extends StatelessWidget {
  final int? count;
  final Widget orderScreen;

  const CartButton({this.count, required this.orderScreen, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>orderScreen));
      },
      child: Container(
          // margin: const EdgeInsets.only(right: 15),
          alignment: Alignment.center,
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AllColors.cartBlack,
          ),
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              SvgPicture.asset(AllImages.cartIcon, height: 20, width: 18),
              Positioned(
                top: -15,
                left: 5,
                child: Container(
                  alignment: Alignment.center,
                  height: 25,
                    width: 25,
                  decoration: BoxDecoration(
                    color: AllColors.buttonOrange,
                    shape: BoxShape.circle
                  ),
                  child: Text(count != null ? count.toString() : '0', style: TextStyles.pinTextStyle.copyWith(
                    color: AllColors.appbarWhite
                  ))
                ),
              ),
            ],
          )),
    );
  }
}
