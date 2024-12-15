import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project1/projects/assignments/assignment1/ui_design2/utiles/modules/bottom_items_data_module.dart';
import 'package:project1/projects/assignments/assignment1/ui_design2/utiles/styles/all_colors.dart';
import 'package:project1/projects/assignments/assignment1/ui_design2/utiles/styles/text_styels.dart';

class BottomItemsSecCard extends StatelessWidget{
  final BottomItemDataModule _listTileDatas;

  const BottomItemsSecCard({required BottomItemDataModule listTileDatas, super.key}):
      _listTileDatas = listTileDatas;
  @override
  Widget build(BuildContext context){
    return SizedBox(
      height: 90,
      child: ListTile(
        onTap: (){
          if(kDebugMode) {
            print('adad');
          }
        },
          leading: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                  image: AssetImage(_listTileDatas.image)
              )
            )
          ),
        title: Text(_listTileDatas.title,
              style: assOneAppBarTitleStyle.copyWith(fontSize: 20)),
        subtitle: Text(_listTileDatas.subTitle,
          style: itemTitleSubStyle
        ),
        // trailing section
        trailing: SizedBox(
          width: 47,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(_listTileDatas.time, style: assOneAppBarTitleStyle.copyWith(fontSize: 20)),
                _listTileDatas.mesCount != 0 ? Container(
                    alignment: Alignment.center,
                    height: 22,
                    width: 22,
                    decoration: BoxDecoration(
                        color: topItemsColor,
                        shape: BoxShape.circle
                    ),
                    child: Text(_listTileDatas.mesCount.toString(), style: topItemTextStyle)
                ) : const SizedBox(height: 22, width: 22)
              ]
          ),
        )
      )
    );
  }
}