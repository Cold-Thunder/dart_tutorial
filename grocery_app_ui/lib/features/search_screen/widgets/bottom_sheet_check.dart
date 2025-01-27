import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/utiles/all_images.dart';
import '../../../core/utiles/styles/all_text_styles.dart';

class BottomSheetCheck extends StatefulWidget {
  final int id;
  final bool data;
  final String title;
  final Function radioChangeFunc;

  const BottomSheetCheck({required this.id, required this.data, required this.title, required this.radioChangeFunc, super.key});

  @override
  State<BottomSheetCheck> createState() => _BottomSheetCheckState();
}

class _BottomSheetCheckState extends State<BottomSheetCheck> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.title,
          style: AllTextStyles.onboardDesStyle.copyWith(fontSize: 16),
        ),
        InkWell(
          onTap: (){
            widget.radioChangeFunc(widget.id);
          },
          radius: 11,
          child: SizedBox(
              height: 22,
              width: 22,
              child: SvgPicture.asset(widget.data ? AllImages.tickGreen : AllImages.tickGrey, height: 22, width: 22)
          ),
        ),
      ],
    );
  }
}
