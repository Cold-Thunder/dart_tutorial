import 'package:flutter/cupertino.dart';
import 'package:project1/projects/ui_design_one/utiles/text_styles/textStyles_for_pages.dart';

class SectionHeading extends StatelessWidget{
  final double _width;
  final String _title;

  SectionHeading({required double width, required String title}):
      _width = width, _title = title;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: _width,
        child: Text(_title,
            style: pageHeading.copyWith(fontSize: 26),
            textAlign: TextAlign.left));
  }
}