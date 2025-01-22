import 'package:flutter/material.dart';
import 'package:grocery_app_ui/config/utiles/all_colors.dart';
import 'package:grocery_app_ui/config/utiles/all_images.dart';
import 'package:grocery_app_ui/config/utiles/all_texts.dart';
import 'package:grocery_app_ui/config/utiles/styles/all_text_styles.dart';
import 'package:grocery_app_ui/ui/screens/login_page/widgets/login_form.dart';
import 'package:grocery_app_ui/ui/screens/login_page/widgets/social_media_log_button.dart';
import 'package:grocery_app_ui/ui/widgets/elevated_button_design.dart';
import 'package:grocery_app_ui/ui/widgets/logo_widget.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
   LoginPage({super.key});

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
              spacing: 10,
              children: [
                // logo widget
                LogoWidget(),
                // heading section
                Text(
                  AllTexts.welcomeBack,
                  style: AllTextStyles.onboardHeadingStyle
                ),
                SizedBox(
                  width: width*0.6,
                  child: Text(
                    AllTexts.loginWith,
                    style: AllTextStyles.loginSubStyle,
                    textAlign: TextAlign.center
                  ),
                ),
                const SizedBox(height: 2),
                SocialMediaLogButton(title: AllTexts.loginWithApple, iconSvg: AllImages.appleSvg),
                SocialMediaLogButton(title: AllTexts.loginWithGoogle, iconSvg: AllImages.googleSvg),
                const SizedBox(height: 0),
                Text(AllTexts.continueWithSocial, style: AllTextStyles.loginSubStyle.copyWith(fontSize: 14)),
                const SizedBox(height: 0),
                LoginForm(hintText: AllTexts.phoneNumber, controller: _phoneController,),
                LoginForm(hintText: AllTexts.password, controller: _passController,secure: true),
                SizedBox(
                  width: width,
                  child: InkWell(
                    onTap: (){},
                      splashColor: AllColors.transparent,
                      highlightColor: AllColors.transparent,
                    child: Text(
                      '${AllTexts.forgetPass}?',
                      style: AllTextStyles.skipTextStyle.copyWith(
                        fontSize: 16
                      ),
                      textAlign: TextAlign.right,
                    )
                  )
                ),
                const SizedBox(height: 10),
                ElevatedButtonDesign(title: AllTexts.login),
                const SizedBox(height:30),
                RichText(
                  textAlign: TextAlign.end,
                  text: TextSpan(
                    text: AllTexts.dontHave,
                    style: AllTextStyles.loginSubStyle.copyWith(
                      color: AllColors.fontBlack
                    ),
                    children: [
                      TextSpan(
                        text: ' ${AllTexts.register}',
                        style: AllTextStyles.skipTextStyle
                      )
                    ]
                  )
                )
              ],
            ),
          )
        ),
      )
    );
  }
}
