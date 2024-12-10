import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/projects/assignments/assignment1/ui_design1/utiles/styles/text_styles.dart';

class TransportDetails extends StatelessWidget {
  final String _direction;
  final String _location;

  const TransportDetails(
      {required String direction, required String location, super.key})
      : _direction = direction,
        _location = location;

  @override
  Widget build(BuildContext context) {
    return
      Container(
        margin: const EdgeInsets.only(left: 10),
        height: 40,
        child: Flex(
            direction: Axis.vertical,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                  flex: 1, child: Text(_direction, style: transportTopDes)),
              Flexible(
                  flex: 1, child: Text(_location, style: transportBottomDes))
            ]));
  }
}
