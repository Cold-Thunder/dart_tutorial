import 'package:assignment7_ui/config/models/popular_fast_food_model.dart';
import 'package:assignment7_ui/config/models/suggest_restaurant_model.dart';

class SearchScreenTexts {
  static String search = 'Search';
  static String recentKeyword = 'Recent Keyword';
  static String suggestedRestaurant = 'Suggested Restaurants';
  static String populerFastFood = 'Popular Fast food';
  static String pizza = 'Pizza';
  static String burger = 'Burger';
  static String sandwich = 'Sandwich';

  static String pansiRestaurant = 'Pansi Restaurant';
  static String spicyBurger = 'American Spicy Burger Shop';
  static String coffeeClub = 'Cafenio Coffee Club';

  static String pansiRating = '4.7';
  static String burgerRating = '4.3';
  static String coffeeRating = '4.0';

  static String europeanPizza = 'European Pizza';
  static String buffaloPizza = 'Buffalo Pizza';
  static String europeanSub = 'Uttora Coffe House';
  static String buffaloSub = 'Cafenio Coffee Club';

  static List<String> keywords = [SearchScreenTexts.pizza,  SearchScreenTexts.sandwich, SearchScreenTexts.burger, SearchScreenTexts.sandwich];

  static List<SuggestRestaurantModel> suggestRestaurants = [
    SuggestRestaurantModel(name: SearchScreenTexts.pansiRestaurant, rating: SearchScreenTexts.pansiRating),
    SuggestRestaurantModel(name: SearchScreenTexts.spicyBurger, rating: SearchScreenTexts.burgerRating),
    SuggestRestaurantModel(name: SearchScreenTexts.coffeeClub, rating: SearchScreenTexts.coffeeRating),
  ];

  static List<PopularFastFoodModel> popularFastFoods = [
    PopularFastFoodModel(title: SearchScreenTexts.europeanPizza, des: SearchScreenTexts.europeanSub),
    PopularFastFoodModel(title: SearchScreenTexts.buffaloPizza, des: SearchScreenTexts.buffaloSub),
    PopularFastFoodModel(title: SearchScreenTexts.buffaloPizza, des: SearchScreenTexts.buffaloSub),
  ];

}
