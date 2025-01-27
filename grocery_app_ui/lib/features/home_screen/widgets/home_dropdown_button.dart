import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/utiles/all_images.dart';
import '../../../core/utiles/all_texts.dart';
import '../../../core/utiles/styles/all_text_styles.dart';

class HomeDropdownButton extends StatefulWidget {
  final String address;
  final Function func;
  const HomeDropdownButton({required this.address, required this.func, super.key});

  @override
  State<HomeDropdownButton> createState() => _HomeDropdownButtonState();
}

class _HomeDropdownButtonState extends State<HomeDropdownButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DropdownButton(
          value: widget.address,
          underline: SizedBox(height: 0),
          icon: Container(
            margin: const EdgeInsets.only(left: 10),
            child: SvgPicture.asset(AllImages.arrowDownSvg)
          ),
          iconSize: 22,
          isDense: true,
          onChanged: (value){
              widget.func(value);
          },
          items: [
            DropdownMenuItem(
                value: AllTexts.homeAddress,
                child: Text(AllTexts.home, style: AllTextStyles.socialLogBtnStyle)
            ),
            DropdownMenuItem(
                value: AllTexts.officeAddress,
                child: Text(AllTexts.office, style: AllTextStyles.socialLogBtnStyle)
            ),
          ],
        ),
        Text(widget.address, style: AllTextStyles.dropDownMenuStyle),
      ],
    );
  }
}
