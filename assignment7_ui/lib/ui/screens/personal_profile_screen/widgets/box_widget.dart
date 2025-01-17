import 'package:assignment7_ui/config/models/personal_profile_item_model.dart';
import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/ui/screens/personal_profile_screen/widgets/personal_list_tile_with_sub.dart';
import 'package:assignment7_ui/ui/screens/personal_profile_screen/widgets/profile_list_tiles.dart';
import 'package:flutter/cupertino.dart';

class BoxWidget extends StatelessWidget {
  final List<PersonalProfileItemModel> allDatas;
  final bool? showSub;
  const BoxWidget({required this.allDatas, this.showSub, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AllColors.boxBackGrey
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: allDatas.map((item)=> showSub ?? true ? PersonalListTileWithSub(model: item) : ProfileListTiles(model: item)
        ).toList()
      )
    );
  }
}
