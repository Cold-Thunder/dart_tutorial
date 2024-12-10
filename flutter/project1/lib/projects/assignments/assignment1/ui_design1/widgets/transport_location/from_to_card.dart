import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/projects/assignments/assignment1/ui_design1/utiles/styles/all_colors.dart';
import 'package:project1/projects/assignments/assignment1/ui_design1/utiles/texts/ass_ui1_texts.dart';
import 'package:project1/projects/assignments/assignment1/ui_design1/widgets/transport_location/transport_details.dart';

class FromToCard extends StatelessWidget{
  final IconData _cardIcon;
  final String _direction;
  final String _location;
  final Color _iconColor;
  double? _rotate;

  FromToCard({required IconData cardIcon, required Color iconColor,
  required String direction,required String location,
    double? rotate,
    super.key})
  : _cardIcon = cardIcon, _iconColor = iconColor,
        _direction = direction, _location = location,
    _rotate = rotate
  ;

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap:(){print('adad');},
       child: SizedBox(
        child: Row(
            children:[
              CircleAvatar(
                  radius: 16,
                  backgroundColor: _iconColor,
                  child: Transform.rotate(
                      angle: _rotate ?? 0,
                      child: Icon(
                        _cardIcon,
                        color: myWhite,
                        size: 20,
                      )
                  )),
              // left description
              TransportDetails(
                  direction:_direction,
                  location: _location
              ),
            ]
        )
    ));
  }
}