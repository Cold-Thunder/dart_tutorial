import 'package:assignment7_ui/ui/widgets/auth_type_widgets/pin_input_taker.dart';
import 'package:flutter/cupertino.dart';

class PinValidator extends StatelessWidget{
  TextEditingController digitOne = TextEditingController();
  TextEditingController digitTwo = TextEditingController();
  TextEditingController digitThree = TextEditingController();
  TextEditingController digitFour = TextEditingController();

  PinValidator({
    required this.digitOne,
    required this.digitTwo,
    required this.digitThree,
    required this.digitFour,
    super.key});

  @override
  Widget build(BuildContext context){
    return SizedBox(
      height: 62,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 28,
        children: [
          PinInputTaker(digit: digitOne),
          PinInputTaker(digit: digitTwo),
          PinInputTaker(digit: digitThree),
          PinInputTaker(digit: digitFour)
        ],
      ),
    );
  }
}