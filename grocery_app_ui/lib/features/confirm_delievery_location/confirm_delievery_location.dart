import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app_ui/core/components/back_arrow_button.dart';
import 'package:grocery_app_ui/core/components/elevated_button_design.dart';
import 'package:grocery_app_ui/core/components/search_bar_widget.dart';
import 'package:grocery_app_ui/core/utiles/all_colors.dart';
import 'package:grocery_app_ui/core/utiles/all_images.dart';
import 'package:grocery_app_ui/core/utiles/all_texts.dart';
import 'package:grocery_app_ui/core/utiles/styles/all_text_styles.dart';
import 'package:grocery_app_ui/features/cart_screen/widgets/heading.dart';

class ConfirmDelieveryLocation extends StatelessWidget {
  ConfirmDelieveryLocation({super.key});

  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: BackArrowButton(),
        title: Text(AllTexts.confirmLocation),
      ),
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AllImages.mapImage), fit: BoxFit.fitHeight),
        ),
        child: Stack(
          children: [
            // search bar
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SearchBarWidget(
                  bgColor: AllColors.white, controller: _textEditingController),
            ),
            Positioned(
              bottom: 245,
              right: 10,
              child: InkWell(
                onTap: (){

                },
                child: Container(
                  padding: const EdgeInsets.all(18),
                  height: 56,
                  width: 56,
                  decoration: BoxDecoration(
                      color: AllColors.mainGreen,
                      shape: BoxShape.circle),
                  child: SvgPicture.asset(AllImages.locationPickIcon, color: AllColors.white,
                      height: 20, width: 20)
                ),
              ),
            ),
            // bottom section
            Positioned(
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 15),
                height: 239,
                width: size.width,
                decoration: BoxDecoration(
                  color: AllColors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(25),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 15,
                  children: [
                    Heading(title: AllTexts.selectLocation, size: 20),
                    Divider(height: 1, color: AllColors.inputOutlineGrey),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Text(
                        AllTexts.homeAddress,
                        style: AllTextStyles.onboardDesStyle,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: ElevatedButtonDesign(
                        title: AllTexts.confirmAddress,
                        func: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
