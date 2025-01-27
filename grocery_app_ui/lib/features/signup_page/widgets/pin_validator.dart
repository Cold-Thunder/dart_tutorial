import 'package:flutter/cupertino.dart';
import 'package:grocery_app_ui/features/signup_page/widgets/pin_input_taker.dart';

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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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