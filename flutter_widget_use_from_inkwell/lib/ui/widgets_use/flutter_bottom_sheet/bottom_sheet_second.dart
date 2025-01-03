import 'package:flutter/material.dart';
import 'package:widgets_use/config/utiles/styles/all_colors.dart';

class BottomSheetSecond extends StatefulWidget {
  const BottomSheetSecond({super.key});

  @override
  State<BottomSheetSecond> createState() => _BottomSheetSecondState();
}

class _BottomSheetSecondState extends State<BottomSheetSecond> {
  List<Map> icons = [
    {
      "icon" : Icons.favorite,
      "color" : AllColors.gerRed,
    },
    {
      "icon": Icons.emoji_emotions,
      "color": AllColors.gerYellow
    }
  ];

  Map icon = {"icon": Icons.emoji_emotions, "color": Colors.grey};

  void emojiSelect(Map emoji){
      setState(() {
        icon = emoji;
      });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: Text('Bottom Sheet Second')),
      body: Container(
        width: width,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onLongPress: () {
                bottomSheetShow(context, width, height, icons, emojiSelect);
              },
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    decoration: BoxDecoration(
                      color: AllColors.swedenBlue,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      'This is a message',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                  Positioned(
                    right: 5,
                    bottom: -15,
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        color: AllColors.white,
                           shape: BoxShape.circle),
                      child: Icon(icon["icon"], color: icon["color"], size: 20)
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

bottomSheetShow(
    BuildContext context, double width, double height, List<Map> icons, Function emojiSelect) {
  showModalBottomSheet(
    context: context,
    backgroundColor: AllColors.black,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(15),
        topRight: Radius.circular(15),
      ),
    ),
    builder: (context) {
      return Container(
        padding: const EdgeInsets.all(15),
        width: width*0.98,
        height: height * 0.35,
        child: Column(
          spacing: 20,
          children: [
            // emoji row
            Row(
              spacing: 20,
              children: icons.map((item) {
                return InkWell(
                  onTap: () {
                    emojiSelect(item);
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child:Icon(item["icon"], size: 50, color: item["color"]),
                  ),
                );
              }).toList(),
            ),

            // functions
            InkWell(
              onTap: (){
                debugPrint('Copy');
              },
              child: Row(
                spacing: 15,
                children: [
                  Icon(Icons.copy, size: 22, color: Colors.grey),
                  Text('Copy', style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey
                  ))
                ],
              ),
            )
          ],
        ),
      );
    },
  );
}


