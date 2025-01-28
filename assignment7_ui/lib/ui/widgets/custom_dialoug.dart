import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/images/all_images.dart';
import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/config/utiles/texts/all_texts.dart';
import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Dialog(
      backgroundColor: AllColors.transparent,
      child: Container(
        height: height > 410 ? 395 : height * 0.8,
        width: 327,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          // image: DecorationImage(
          //     image: AssetImage(AllImages.dialogBack),
          //   fit: BoxFit.fill
          // ),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [AllColors.alertLightOrange, AllColors.alertDeepOrange],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // top section
            Stack(
              clipBehavior: Clip.none,
              children: [
                // close icon button is here
                Positioned(
                  top: -30,
                  right: -10,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          color: AllColors.brightOrange,
                          shape: BoxShape.circle),
                      child: Icon(Icons.close,
                          size: 18, color: AllColors.buttonOrange),
                    ),
                  ),
                ),
                // background image section
                Container(
                  margin: const EdgeInsets.all(20),
                  height: height > 410 ? 190 : height*0.30,
                  width: 270,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AllImages.dialougElem),
                      fit: BoxFit.fill,
                    ),
                  ),
                  // top section texts
                  child: SizedBox(
                    width: height > 410 ? 267 : height * 0.32,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          AllTexts.dialougHeading,
                          style: TextStyles.dialougHeadingStyle,
                        ),
                        Text(
                          AllTexts.dialougSub,
                          style: TextStyles.elevatedButtonStyle
                              .copyWith(fontSize: 30),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Text(
              AllTexts.cuponText,
              style: TextStyles.categoryHeadingStyle
                  .copyWith(color: AllColors.appbarWhite),
              textAlign: TextAlign.center,
            ),
            // Spacer(),
            //button section
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              margin: const EdgeInsets.only(top: 20, bottom: 10),
              height: height > 410 ? 62 : height * 0.076,
              width: 327,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AllColors.transparent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  side: BorderSide(width: 2, color: AllColors.appbarWhite),
                ),
                child: Text(
                  AllTexts.gotIt,
                  style: TextStyles.pinTextStyle
                      .copyWith(color: AllColors.appbarWhite),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
