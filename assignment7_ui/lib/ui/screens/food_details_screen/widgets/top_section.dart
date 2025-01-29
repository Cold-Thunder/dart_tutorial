import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/ui/widgets/grey_card.dart';
import 'package:flutter/material.dart';

class TopSection extends StatefulWidget {
  final String image;
  const TopSection({required this.image, super.key});

  @override
  State<TopSection> createState() => _TopSectionState();
}

class _TopSectionState extends State<TopSection> {
  bool fav = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Stack(
        children:[
          GreyCard(height: 184, width: width, borderRad: 32, image: widget.image),
          Positioned(
            right: 20,
            bottom: 20,
            child: InkWell(
                onTap: (){
                  setState(() {
                    fav = !fav;
                  });
                },
                child: Container(
                    height: 37,
                    width: 37,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AllColors.white20
                    ),
                    child: Icon(
                        fav
                            ? Icons.favorite
                            : Icons.favorite_border_outlined,
                        size: 22,
                        color: fav ? AllColors.canceledRed: AllColors.appbarWhite
                    )
                )
            ),
          )
        ]
    );
  }
}
