import 'package:project1/projects/assignments/assignment2/ass2_ui2/modules/large_card_module.dart';
import 'package:project1/projects/assignments/assignment2/ass2_ui2/modules/small_card_module.dart';
import 'package:project1/projects/assignments/assignment2/ass2_ui2/utiles/all_colors.dart';
import 'package:project1/projects/assignments/assignment2/ass2_ui2/utiles/images/first_page_images.dart';

class Ass2UI2AllTexts {
  static String title = 'Resturant App';
  static String appBarTitle = 'Hello Kamilklkn';
  static String appBarInitialLoc = 'Sancaktepe, İstanbul';
  static String searchBarText = 'Search by restaurant or food';
  // headings
  static String topCategories = 'Top categories';
  static String nearYou = 'Near You';
  static String discoverNewPlaces = 'Discover new places';
  static String seeAll = 'See All';

  static String burger = 'Burger';
  static String sandwich = 'American';
  static String pizza = 'Pizza';
  static String barbieque = 'Barbieque';

  static String burgerSub = '1126 places';
  static String sandwichSub = '142 places';
  static String pizzaSub = '365 places';
  static String barbiequeSub = '523 places';

  static String sandwichTantuni = 'Sandwich Tantuni';
  static String pizzaWithSalmon = 'Pizza With Salmon';

  static String sandwichTantuniSub = 'NK Tantuni, Kadıköy';
  static String pizzaWithSalmonSub = 'Dominos Pizza, Sarıgazi';

  static String sandwichRating = '4.8';
  static String sandwichRatingCount = '233';
  static String pizzaWithSalmonRating = '4.3';
  static String pizzaWithSalmonRatingCount = '233';

  //discover new places section
  static String pizzahutTitle = 'Pizza Hut';
  static String nusretTitle = 'Nusret Et';
  static String burgerKingTitle = 'Burger King';
  static String develiTitle = 'Develi';

  static String pizzahutSub = '33 Mins';
  static String nusretSub = '35 Mins';
  static String burgerKingSub = '38 Mins';
  static String deveilSub = '40 Mins';


  static List<SmallCardModule> smallCardInfos = [
    SmallCardModule(
        title: Ass2UI2AllTexts.burger,
        subtitle: Ass2UI2AllTexts.burgerSub,
        image: FirstPageImages.burgerIcon,
      backColor: AllColors.dropDownIconColor
    ),
    SmallCardModule(
        title: Ass2UI2AllTexts.sandwich,
        subtitle: Ass2UI2AllTexts.sandwichSub,
        image:FirstPageImages.sandwichIcon,
      backColor: AllColors.smallCardBlue
    ),
    SmallCardModule(
        title: Ass2UI2AllTexts.pizza,
        subtitle: Ass2UI2AllTexts.pizzaSub,
        image: FirstPageImages.pizzaIcon,
      backColor: AllColors.smallCardPurple
    ),
    SmallCardModule(
        title: Ass2UI2AllTexts.barbieque,
        subtitle: Ass2UI2AllTexts.barbiequeSub,
        image: FirstPageImages.barbiequeIcon,
      backColor: AllColors.smallCardRed
    ),
  ];

  static List<LargeCardModule> nearYouInfos = [
    LargeCardModule(
        image: FirstPageImages.sandWichTantuni,
        title: Ass2UI2AllTexts.sandwichTantuni,
        subtitle: Ass2UI2AllTexts.sandwichTantuniSub,
        rating: Ass2UI2AllTexts.sandwichRating,
        ratingCount: Ass2UI2AllTexts.sandwichRatingCount,
        freeDelivery: true
    ),
    LargeCardModule(
        image: FirstPageImages.pizzaWithSalmon,
        title: Ass2UI2AllTexts.pizzaWithSalmon,
        subtitle:Ass2UI2AllTexts.pizzaWithSalmonSub,
        rating: Ass2UI2AllTexts.pizzaWithSalmonRating,
        ratingCount: Ass2UI2AllTexts.pizzaWithSalmonRatingCount,
        freeDelivery: false)
  ];

  static List<SmallCardModule> discoverNewPlacesInfo = [
    SmallCardModule(
        title: Ass2UI2AllTexts.pizzahutTitle,
        subtitle: Ass2UI2AllTexts.pizzahutSub,
        image: FirstPageImages.pizzaHut,
        backColor: AllColors.appBarColor
    ),
    SmallCardModule(
        title: Ass2UI2AllTexts.nusretTitle,
        subtitle: Ass2UI2AllTexts.nusretSub,
        image: FirstPageImages.nusratET,
        backColor: AllColors.appBarColor
    ),
    SmallCardModule(
        title: Ass2UI2AllTexts.burgerKingTitle,
        subtitle: Ass2UI2AllTexts.burgerKingSub,
        image: FirstPageImages.burgerKing,
        backColor: AllColors.appBarColor
    ),
    SmallCardModule(
        title: Ass2UI2AllTexts.develiTitle,
        subtitle: Ass2UI2AllTexts.deveilSub,
        image: FirstPageImages.deveil,
        backColor: AllColors.appBarColor
    )
  ];
}