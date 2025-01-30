import 'package:assignment7_ui/config/models/notification_model.dart';
import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/all_images.dart';
import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationListTile extends StatefulWidget {
  final NotificationModel model;
  final bool isNew;

  const NotificationListTile(
      {required this.model, required this.isNew, super.key});

  @override
  State<NotificationListTile> createState() => _NotificationListTileState();
}

class _NotificationListTileState extends State<NotificationListTile> {
  late bool isNewNot;

  @override
  void initState() {
    super.initState();

    isNewNot = widget.isNew;
  }

  @override
  Widget build(BuildContext context) {
    return  ListTile(
        onTap: () {
          setState(() {
            isNewNot = false;
          });
        },
        tileColor: isNewNot ? AllColors.buttonOrange : AllColors.brightOrange,
        contentPadding: const EdgeInsets.symmetric(horizontal: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),

        leading: Container(
          alignment: Alignment.center,
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isNewNot ? AllColors.appbarWhite : AllColors.buttonOrange,
          ),
          child: SvgPicture.asset(isNewNot ? AllImages.bellOrange : AllImages.bellWhite, height: 20, width: 20),
        ),
        minLeadingWidth: 40,
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(widget.model.time,
                style: TextStyles.categoryHeadingStyle.copyWith(
                    fontSize: 14,
                    color: isNewNot
                        ? AllColors.appbarWhite
                        : AllColors.headingBlack)),
            Text(widget.model.date,
                style: TextStyles.headingTextStyle.copyWith(
                    fontSize: 12,
                    color: isNewNot
                        ? AllColors.appbarWhite
                        : AllColors.headingBlack))
          ],
        ),
        title: Container(
          padding: const EdgeInsets.only(top: 8),
          height: 60,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                widget.model.title,
                style: TextStyles.categoryHeadingStyle.copyWith(
                    fontSize: 14,
                    color:
                        isNewNot ? AllColors.appbarWhite : AllColors.headingBlack),
              ),
              Text(
                widget.model.subTitle,
                style: TextStyles.itemCountTextStyle.copyWith(
                    color: isNewNot
                        ? AllColors.appbarWhite
                        : AllColors.orderItemCountGrey),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
    );
  }
}
