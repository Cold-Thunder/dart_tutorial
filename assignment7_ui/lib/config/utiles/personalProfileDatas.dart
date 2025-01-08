import 'package:assignment7_ui/config/models/personal_profile_item_model.dart';
import 'package:assignment7_ui/ui/screens/my_address_screen/my_address_screen.dart';
import 'package:assignment7_ui/ui/screens/personal_profile_screen/personal_profile_screen.dart';
import 'package:assignment7_ui/config/utiles/images/all_images.dart';
import 'package:assignment7_ui/config/utiles/texts/personal_profile_text.dart';

class PersonalProfileDatas{
  static List<PersonalProfileItemModel> personalProfileInfos = [
    PersonalProfileItemModel(icon: AllImages.personIcon, title: PersonalProfileText.fullName, subTitle: PersonalProfileText.name),
    PersonalProfileItemModel(icon: AllImages.emailIcon, title: PersonalProfileText.email, subTitle: PersonalProfileText.emailAdd),
    PersonalProfileItemModel(icon: AllImages.phoneIcon, title: PersonalProfileText.personalNumber, subTitle: PersonalProfileText.perNum),
  ];

  static List<PersonalProfileItemModel> profileTopInfos = [
    PersonalProfileItemModel(icon: AllImages.personIcon, title: PersonalProfileText.personalProAppBar, widget: PersonalProfileScreen()),
    PersonalProfileItemModel(icon: AllImages.addressIcon, title: PersonalProfileText.address, widget: MyAddressScreen()),
  ];

  static List<PersonalProfileItemModel> profileCartInfos = [
    PersonalProfileItemModel(icon: AllImages.cartSmallIcon, title: PersonalProfileText.cart,),
    PersonalProfileItemModel(icon: AllImages.favIcon, title: PersonalProfileText.favourite,),
    PersonalProfileItemModel(icon: AllImages.notificationIcon, title: PersonalProfileText.notifications,),
    PersonalProfileItemModel(icon: AllImages.paymentIcon, title: PersonalProfileText.paymentMethod,),
  ];

  static List<PersonalProfileItemModel> faqSecInfos = [
    PersonalProfileItemModel(icon: AllImages.faqIcon, title: PersonalProfileText.faqs,),
    PersonalProfileItemModel(icon: AllImages.userReviewIcon, title: PersonalProfileText.userReview,),
    PersonalProfileItemModel(icon: AllImages.settingIcon, title: PersonalProfileText.settings,),
  ];

  static List<PersonalProfileItemModel> logInfo = [
    PersonalProfileItemModel(icon: AllImages.logoutIcon, title: PersonalProfileText.logOut,),
  ];
}