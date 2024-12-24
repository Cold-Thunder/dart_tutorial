import 'package:assignment7_ui/widgets/circle_card.dart';
import 'package:flutter/cupertino.dart';

class TrackerWidget extends StatelessWidget{
  final List<Color> trackerColor;

  const TrackerWidget({required this.trackerColor, super.key});

  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: trackerColor
          .map((item) => CircleCard(color: item))
          .toList(),
    );
  }
}