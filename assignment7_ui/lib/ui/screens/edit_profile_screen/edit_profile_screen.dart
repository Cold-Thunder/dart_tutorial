import 'package:assignment7_ui/ui/screens/personal_profile_screen/personal_profile_screen.dart';
import 'package:assignment7_ui/config/utiles/all_colors.dart';
import 'package:assignment7_ui/config/utiles/images/all_images.dart';
import 'package:assignment7_ui/config/utiles/texts/edit_profile_texts.dart';
import 'package:assignment7_ui/config/utiles/texts/personal_profile_text.dart';
import 'package:assignment7_ui/ui/screens/personal_profile_screen/widgets/personal_bio_input_field.dart';
import 'package:assignment7_ui/ui/widgets/app_bar_title_widget.dart';
import 'package:assignment7_ui/ui/widgets/auth_type_widgets/input_field_title.dart';
import 'package:assignment7_ui/ui/widgets/auth_type_widgets/text_input_field.dart';
import 'package:assignment7_ui/ui/widgets/back_icon.dart';
import 'package:assignment7_ui/ui/widgets/elevated_button_design.dart';
import 'package:assignment7_ui/ui/widgets/grey_card.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EditProfileScreen extends StatelessWidget {
  final TextEditingController _fullName =  TextEditingController();
  final TextEditingController _email =  TextEditingController();
  final TextEditingController _phone =  TextEditingController();
  final TextEditingController _bio =  TextEditingController();
 EditProfileScreen({super.key});

 void infos(){
   debugPrint(_fullName.text.toString());
   debugPrint(_email.text.toString());
   debugPrint(_phone.text.toString());
   debugPrint(_bio.text.toString());
 }
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          leading: BackIcon(color: AllColors.backIconGrey),
          title: AppBarTitleWidget(title: EditProfileTexts.editProfile)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: SizedBox(
            width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                // top profile section
                Container(
                  width: width,
                  alignment: Alignment.center,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      // circle shape
                      GreyCard(
                          height: 130,
                          width: 130,
                          borderRad: 65,
                          color: AllColors.profileCircleOrange),
                      // edit button
                      Positioned(
                          top: 95,
                          left: 80,
                          child: InkWell(
                            onTap: (){
                              if (kDebugMode) {
                                debugPrint('adada');
                              }
                            },
                            child: Container(
                                alignment: Alignment.center,
                                height: 41,
                                width: 41,
                                decoration: BoxDecoration(
                                  color: AllColors.buttonOrange,
                                  shape: BoxShape.circle,
                                ),
                                child: SvgPicture.asset(AllImages.pencil,
                                    height: 16, width: 16)),
                          )),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                InputFieldTitle(title: EditProfileTexts.fullName, fontSize: 14),
                const SizedBox(height: 10),
                TextInputField(controller: _fullName, hintText: PersonalProfileText.name),

                const SizedBox(height: 5),
                InputFieldTitle(title: EditProfileTexts.email, fontSize: 14),
                const SizedBox(height: 10),
                TextInputField(controller: _email, hintText: PersonalProfileText.emailAdd),

                const SizedBox(height: 5),
                InputFieldTitle(title: EditProfileTexts.phoneNumber, fontSize: 14),
                const SizedBox(height: 10),
                TextInputField(controller: _phone, hintText: PersonalProfileText.perNum),

                const SizedBox(height: 5),
                InputFieldTitle(title: EditProfileTexts.bio, fontSize: 14),
                const SizedBox(height: 10),
                PersonalBioInputField(controller: _bio, hintText: PersonalProfileText.bioText),
                const SizedBox(height: 30),
                ElevatedButtonDesign(title: EditProfileTexts.save, screen: PersonalProfileScreen(), function: infos,)

              ],
            ),
          ),
        ),
      ),
    );
  }
}
