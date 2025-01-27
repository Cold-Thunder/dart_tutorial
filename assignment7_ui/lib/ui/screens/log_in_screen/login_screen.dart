import 'package:assignment7_ui/config/models/social_media_model.dart';
import 'package:assignment7_ui/ui/screens/forget_pass_screen/forget_pass_screen.dart';
import 'package:assignment7_ui/ui/screens/home_screens/home_v1.dart';
import 'package:assignment7_ui/ui/screens/signup_screen/signup_screen.dart';
import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/images/all_images.dart';
import 'package:assignment7_ui/config/utiles/styles/text_styles/text_styles.dart';
import 'package:assignment7_ui/config/utiles/texts/auth_type_texts.dart';
import 'package:assignment7_ui/ui/widgets/auth_type_widgets/auth_type_des.dart';
import 'package:assignment7_ui/ui/widgets/auth_type_widgets/auth_type_heading.dart';
import 'package:assignment7_ui/ui/widgets/circle_shape.dart';
import 'package:assignment7_ui/ui/widgets/elevated_button_design.dart';
import 'package:assignment7_ui/ui/widgets/auth_type_widgets/input_field_title.dart';
import 'package:assignment7_ui/ui/widgets/auth_type_widgets/text_input_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailCont = TextEditingController();

  final TextEditingController _passCont = TextEditingController();

  List<SocialMediaModel> socialMedia = [
    SocialMediaModel(color: AllColors.fbBlue, icon: AllImages.fbIcon),
    SocialMediaModel(color: AllColors.twitterBlue, icon: AllImages.twitterIcon),
    SocialMediaModel(color: AllColors.appleBlack, icon: AllImages.appleIcon),
  ];

  bool _remember = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AllColors.black,
      body: SingleChildScrollView(
        child: SizedBox(
          width: width,
          height: height < 812 ? 812 : height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: height > 579 ? MainAxisAlignment.spaceBetween : MainAxisAlignment.start,
            children: [
              // top flower image
              Container(
                  alignment: Alignment.topLeft,
                  width: width,
                  child: Image.asset(AllImages.splashTopFlow)),
              // heading
              AuthTypeHeading(title: AuthTypeTexts.login),
              // des section
              AuthTypeDes(texts: AuthTypeTexts.loginDes),
              SizedBox(height: 40),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom,
                    left: 15,
                    right: 15,
                    top: 20,
                  ),
                  width: width,
                  // height: height < 812 ? 579 : height*0.713,
                  decoration: BoxDecoration(
                    color: AllColors.appbarWhite,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InputFieldTitle(title: AuthTypeTexts.email),
                      const SizedBox(height: 5),
                      TextInputField(
                          controller: _emailCont,
                          hintText: AuthTypeTexts.emailAdd),
                      const SizedBox(height: 10),
                      InputFieldTitle(title: AuthTypeTexts.password),
                      const SizedBox(height: 5),
                      TextInputField(
                          controller: _passCont,
                          hintText: AuthTypeTexts.password,
                          secure: true),
                      // _remember section
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20,
                                width: 20,
                                child: Checkbox(
                                  value: _remember,
                                  onChanged: (value) {
                                    setState(() {
                                      _remember = !_remember;
                                    });
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  side: BorderSide(
                                      width: 2, color: AllColors.inputFieldWhite),
                                  checkColor: AllColors.appbarWhite,
                                  activeColor: AllColors.buttonOrange,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Text(AuthTypeTexts.remember,
                                  style: TextStyles.hintTextStyle)
                            ],
                          ),
                          // forget pass section
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ForgetPassScreen(),
                                ),
                              );
                            },
                            child: Text(
                              AuthTypeTexts.forget,
                              style: TextStyles.hintTextStyle
                                  .copyWith(color: AllColors.buttonOrange),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      // log in button
                      SizedBox(
                        width: width,
                        child: ElevatedButtonDesign(
                          title: AuthTypeTexts.login,
                          screen: HomeV1(),
                        ),
                      ),
                      const SizedBox(height: 30),
                      // sign up section
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(AuthTypeTexts.dontHave,
                              style: TextStyles.onboardDesStyle),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignupScreen(),
                                ),
                              );
                            },
                            child: Text(
                              AuthTypeTexts.signUp,
                              style: TextStyles.elevatedButtonStyle
                                  .copyWith(color: AllColors.buttonOrange),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      // text or
                      Container(
                        alignment: Alignment.center,
                        width: width,
                        child: Text(AuthTypeTexts.or,
                            style: TextStyles.onboardDesStyle),
                      ),
                      const SizedBox(height: 20),
                      // social media section
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          spacing: 20,
                          children: socialMedia
                              .map((item) => CircleShape(model: item))
                              .toList()),
                      const SizedBox(height: 20)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
