import 'package:assignment7_ui/config/models/personal_profile_item_model.dart';
import 'package:assignment7_ui/config/utiles/all_texts.dart';
import 'package:assignment7_ui/ui/screens/edit_cart_screen/edit_cart_screen.dart';
import 'package:assignment7_ui/ui/screens/favourit_screen/favourit_screen.dart';
import 'package:assignment7_ui/ui/screens/home_screens/home_v1.dart';
import 'package:assignment7_ui/ui/screens/home_screens/home_v2.dart';
import 'package:assignment7_ui/ui/screens/home_screens/home_v3.dart';
import 'package:assignment7_ui/ui/screens/log_in_screen/login_screen.dart';
import 'package:assignment7_ui/ui/screens/my_address_screen/my_address_screen.dart';
import 'package:assignment7_ui/ui/screens/payment_screen/payment_screen.dart';
import 'package:assignment7_ui/ui/screens/personal_profile_screen/personal_profile_screen.dart';
import 'package:assignment7_ui/config/utiles/all_images.dart';

class PersonalProfileDatas{
  static List<PersonalProfileItemModel> homeScreens = [
    PersonalProfileItemModel(icon: AllImages.home, title: AllTexts.home1, widget: HomeV1()),
    PersonalProfileItemModel(icon: AllImages.home, title: AllTexts.home2, widget: HomeV2()),
    PersonalProfileItemModel(icon: AllImages.home, title: AllTexts.home3, widget: HomeV3()),
  ];
  static List<PersonalProfileItemModel> personalProfileInfos = [
    PersonalProfileItemModel(icon: AllImages.personIcon, title: AllTexts.fullName, subTitle: AllTexts.name),
    PersonalProfileItemModel(icon: AllImages.emailIcon, title: AllTexts.email, subTitle: AllTexts.emailAdd),
    PersonalProfileItemModel(icon: AllImages.phoneIcon, title: AllTexts.personalNumber, subTitle: AllTexts.perNum),
  ];

  static List<PersonalProfileItemModel> profileTopInfos = [
    PersonalProfileItemModel(icon: AllImages.personIcon, title: AllTexts.personalProAppBar, widget: PersonalProfileScreen()),
    PersonalProfileItemModel(icon: AllImages.addressIcon, title: AllTexts.address, widget: MyAddressScreen()),
  ];

  static List<PersonalProfileItemModel> profileCartInfos = [
    PersonalProfileItemModel(icon: AllImages.cartSmallIcon, title: AllTexts.cart, widget: EditCartScreen()),
    PersonalProfileItemModel(icon: AllImages.favIcon, title: AllTexts.favouriteCap, widget: FavouriteScreen()),
    PersonalProfileItemModel(icon: AllImages.notificationIcon, title: AllTexts.notifications,),
    PersonalProfileItemModel(icon: AllImages.paymentIcon, title: AllTexts.paymentMethod, widget: PaymentScreen()),
  ];

  static List<PersonalProfileItemModel> faqSecInfos = [
    PersonalProfileItemModel(icon: AllImages.faqIcon, title: AllTexts.faqs,),
    PersonalProfileItemModel(icon: AllImages.userReviewIcon, title: AllTexts.userReview,),
    PersonalProfileItemModel(icon: AllImages.settingIcon, title: AllTexts.settings,),
  ];

  static List<PersonalProfileItemModel> logInfo = [
    PersonalProfileItemModel(icon: AllImages.logoutIcon, title: AllTexts.logOut, widget: LoginScreen()),
  ];
}