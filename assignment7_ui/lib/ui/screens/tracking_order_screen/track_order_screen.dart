import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/images/all_images.dart';
import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/config/utiles/texts/all_texts.dart';
import 'package:assignment7_ui/ui/screens/tracking_order_screen/widgets/bottom_sheet_bottom_section.dart';
import 'package:assignment7_ui/ui/screens/tracking_order_screen/widgets/bottom_sheet_middle_section.dart';
import 'package:assignment7_ui/ui/screens/tracking_order_screen/widgets/bottom_sheet_top.dart';
import 'package:assignment7_ui/ui/widgets/app_bar_title_widget.dart';
import 'package:assignment7_ui/ui/widgets/back_icon.dart';
import 'package:assignment7_ui/ui/widgets/grey_card.dart';
import 'package:flutter/material.dart';

class TrackOrderScreen extends StatefulWidget {
  const TrackOrderScreen({super.key});

  @override
  State<TrackOrderScreen> createState() => _TrackOrderScreenState();
}

class _TrackOrderScreenState extends State<TrackOrderScreen> {


  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: BackIcon(color: AllColors.backIconBlack, iconPng: AllImages.backWhiteIcon,),
        title: AppBarTitleWidget(title: AllTexts.trackOrder),
        backgroundColor: AllColors.shapeGrey,
      ),
      body: Stack(
        children: [
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              color: AllColors.shapeGrey
            )
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.2,
            minChildSize: 0.2,
            maxChildSize: 0.8,
            builder: (context, scrollController){
              return SingleChildScrollView(
                controller: scrollController,
                child: Container(
                  height: 574,
                  width: width,
                  decoration: BoxDecoration(
                    color: AllColors.appbarWhite,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24)
                    )
                  ),
                  child: Column(
                    children:[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: [
                            const SizedBox(height: 5),
                            GreyCard(height: 7, width: 70, borderRad: 80, color: AllColors.handlerGrey),
                            const SizedBox(height: 25),
                            BottomSheetTop(),
                            const SizedBox(height: 40),
                            Text('${AllTexts.time} min', style: TextStyles.timeHeadingStyle),
                            Text(AllTexts.estimateTime.toUpperCase(), style: TextStyles.hintTextStyle),
                          ],
                        ),
                      ),
                      const SizedBox(height: 40),
                      BottomSheetMiddleSection(),
                      Spacer(),
                      BottomSheetBottomSection()
                    ]
                  )
                ),
              );
            }
          )
        ]
      ),

    );
  }
}
