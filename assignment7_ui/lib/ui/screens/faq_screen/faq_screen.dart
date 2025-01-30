import 'package:assignment7_ui/config/models/faq_model.dart';
import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/all_texts.dart';
import 'package:assignment7_ui/ui/screens/faq_screen/widgets/faq_title.dart';
import 'package:assignment7_ui/ui/widgets/app_bar_title_widget.dart';
import 'package:assignment7_ui/ui/widgets/back_icon.dart';
import 'package:flutter/material.dart';

class FaqScreen extends StatelessWidget {
  FaqScreen({super.key});

  final List<FaqModel> faqLists = AllTexts.faqsList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackIcon(color: AllColors.backIconGrey),
        title: AppBarTitleWidget(title: AllTexts.faqs)
      ),
      body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: faqLists.length,
                        itemBuilder: (context, index){
                          return FaqTile(model: faqLists[index],);
                        }
                      )
                    ]
                  )
            )
      )
    );
  }
}
