
import 'package:assignment7_ui/utiles/all_colors.dart';
import 'package:assignment7_ui/utiles/images/all_images.dart';
import 'package:assignment7_ui/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/utiles/texts/home_screen_texts.dart';
import 'package:flutter/material.dart';

class CustomDialoug extends StatelessWidget {
  const CustomDialoug({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AllColors.transparent,
      child: Container(
        height: 395,
        width: 327,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          // image: DecorationImage(
          //     image: AssetImage(AllImages.dialougBack),
          //   fit: BoxFit.fill
          // ),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                AllColors.alertLightOrange,
                AllColors.alertDeepOrange
              ]
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
                    left: 245,
                    child: InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          color: AllColors.brightOrange,
                          shape: BoxShape.circle
                        ),
                        child:  Icon(Icons.close, size: 18, color: AllColors.buttonOrange)
                      ),
                    ),
                  ),
                  // background image section
                  Container(
                    margin: const EdgeInsets.all(20),
                  height: 190,
                    width: 270,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(AllImages.dialougElem),
                        fit: BoxFit.fill
                      )
                    ),
                    // top section texts
                    child: SizedBox(
                      width: 267,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(HomeScreenText.dialougHeading, style: TextStyles.dialougHeadingStyle),
                          Text(HomeScreenText.dialougSub, style: TextStyles.elevatedButtonStyle.copyWith(
                            fontSize: 30
                          ),),
                        ]
                      ),
                    ),
                  )
                ],
              ),
            Text(HomeScreenText.cuponText, style: TextStyles.categoryHeadingStyle
                .copyWith(color: AllColors.appbarWhite),
              textAlign: TextAlign.center
            ),
             // Spacer(),
            //button section
             Container(
               padding: const EdgeInsets.symmetric(horizontal: 15),
                margin: const EdgeInsets.only(top: 20,bottom: 10),
                height: 62,
                width: 327,
                child: ElevatedButton(
                    onPressed: (){
              
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AllColors.transparent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      side: BorderSide(
                        width: 2,
                        color: AllColors.appbarWhite
                      )
                    ),
                    child: Text(HomeScreenText.gotIt, style: TextStyles.pinTextStyle.copyWith(
                      color: AllColors.appbarWhite
                    ))
                ),
              ),

          ],
        ),
      )
    );
  }
}
