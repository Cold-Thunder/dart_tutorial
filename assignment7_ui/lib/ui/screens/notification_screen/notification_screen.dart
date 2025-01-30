import 'package:assignment7_ui/config/models/notification_model.dart';
import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/all_texts.dart';
import 'package:assignment7_ui/ui/screens/notification_screen/widgets/notification_list_tile.dart';
import 'package:assignment7_ui/ui/widgets/app_bar_title_widget.dart';
import 'package:assignment7_ui/ui/widgets/back_icon.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  NotificationScreen({super.key});

  final List<NotificationModel> notifications = AllTexts.notificationsList;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: BackIcon(color: AllColors.backIconGrey),
        title: AppBarTitleWidget(title: AllTexts.notifications),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: SizedBox(
            width: size.width,
            child: ListView.separated(
              shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index){
                return SizedBox(height: 10);
                },
                itemCount: notifications.length,
                itemBuilder: (context, index){
              return NotificationListTile(model: notifications[index], isNew: notifications[index].isNew,);
            })
          )
        ),
      )
    );
  }
}
