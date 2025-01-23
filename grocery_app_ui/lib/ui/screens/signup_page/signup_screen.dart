import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app_ui/config/utiles/all_colors.dart';
import 'package:grocery_app_ui/config/utiles/all_texts.dart';
import 'package:grocery_app_ui/config/utiles/routes_helper.dart';
import 'package:grocery_app_ui/config/utiles/styles/all_text_styles.dart';
import 'package:grocery_app_ui/ui/screens/signup_page/widgets/code_send_confirm_dialog.dart';
import 'package:grocery_app_ui/ui/screens/signup_page/widgets/congrates_dialog.dart';
import 'package:grocery_app_ui/ui/screens/signup_page/widgets/signup_form_input.dart';
import 'package:grocery_app_ui/ui/screens/signup_page/widgets/verification_dialog.dart';
import 'package:grocery_app_ui/ui/widgets/elevated_button_design.dart';
import 'package:grocery_app_ui/ui/widgets/logo_widget.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final GlobalKey<FormFieldState> _formName = GlobalKey();
  final GlobalKey<FormFieldState> _formEmail = GlobalKey();
  final GlobalKey<FormFieldState> _formPhone = GlobalKey();
  final GlobalKey<FormFieldState> _formPassOne = GlobalKey();
  final GlobalKey<FormFieldState> _formPassTwo = GlobalKey();

  final TextEditingController _nameCont = TextEditingController();
  final TextEditingController _emailCont = TextEditingController();
  final TextEditingController _numberCont = TextEditingController();
  final TextEditingController _passOneCont = TextEditingController();
  final TextEditingController _passTwoCont = TextEditingController();


  showConfirmDialog(context) {
    return showDialog(
        context: context,
        barrierLabel: 'Confirm Code',
        barrierColor: AllColors.transparent40,
        builder: (context) {
          return CodeSendConfirmDialog(nextDialogFunc: showVerifyCode,);
        });
  }

  showVerifyCode(context){
    Navigator.pop(context);
    return showDialog(
      context: context,
      barrierLabel: 'Verify Code',
      barrierColor: AllColors.transparent40,
      barrierDismissible: true,
      builder: (context){
        return VerificationDialog(nextDialogFunc: showCongratesFunc,);
      }
    );
  }

  showCongratesFunc(context){
    Navigator.pop(context);
    return showDialog(
        context: context,
        barrierLabel: 'Verify Code',
        barrierColor: AllColors.transparent40,
        barrierDismissible: true,
        builder: (context){
          return CongratesDialog(goToHomeFunc: goingHomeFunc,);
        }
    );
  }

  goingHomeFunc(context){
    Navigator.pop(context);
    Navigator.pushReplacementNamed(context, RoutesHelper.homeScreen);
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AllColors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 40),
          child: SizedBox(
            width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 12,
              children: [
                // logo widget
                LogoWidget(height: 60, width: 60),
                // heading section
                Text(AllTexts.createOne,
                    style: AllTextStyles.onboardHeadingStyle),
                SizedBox(
                  width: width * 0.7,
                  child: Text(AllTexts.signupDes,
                      style: AllTextStyles.loginSubStyle,
                      textAlign: TextAlign.center),
                ),
                const SizedBox(height: 0),
                Form(
                  key: _formKey,
                  child: Column(
                    spacing: 12,
                    children: [
                      SignupFormInput(
                        keyState: _formName,
                        hintText: AllTexts.name,
                        controller: _nameCont,
                      ),
                      SignupFormInput(
                        keyState: _formEmail,
                        hintText: AllTexts.email,
                        controller: _emailCont,
                      ),
                      SignupFormInput(
                          keyState: _formPhone,
                          hintText: AllTexts.phoneNumber,
                          controller: _numberCont,
                          number: true),
                      SignupFormInput(
                          keyState: _formPassOne,
                          hintText: AllTexts.enterPass,
                          controller: _passOneCont,
                          secure: true),
                      SignupFormInput(
                          keyState: _formPassTwo,
                          hintText: AllTexts.reenterPass,
                          controller: _passTwoCont,
                          secure: true),
                      const SizedBox(height: 5),
                      ElevatedButtonDesign(
                          title: AllTexts.register, func: showConfirmDialog),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                RichText(
                  textAlign: TextAlign.end,
                  text: TextSpan(
                    text: AllTexts.haveAccount,
                    style: AllTextStyles.loginSubStyle
                        .copyWith(color: AllColors.fontBlack),
                    children: [
                      TextSpan(
                        text: ' ${AllTexts.login}',
                        style: AllTextStyles.skipTextStyle,
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushReplacementNamed(
                                context, RoutesHelper.loginPage);
                          },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
