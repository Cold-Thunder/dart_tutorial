import 'package:assignment7_ui/config/models/cart_item_model.dart';
import 'package:assignment7_ui/config/models/delivery_man_message.dart';
import 'package:assignment7_ui/config/models/home_page_category_model.dart';
import 'package:assignment7_ui/config/models/home_v2_cat_model.dart';
import 'package:assignment7_ui/config/models/order_item.dart';
import 'package:assignment7_ui/config/models/order_model.dart';
import 'package:assignment7_ui/config/models/popular_item_card_model.dart';
import 'package:assignment7_ui/config/models/resturant_model.dart';
import 'package:assignment7_ui/config/utiles/all_images.dart';

class AllTexts{
  static String home1 = 'Home One';
  static String home2 = 'Home Two';
  static String home3 = 'Home Three';

  static String notFound = 'Not Found';

  static String allRestaurants = 'All Restaurants';
  static String favourites = 'Favourites';
  static String restaurants = 'Restaurants';
  static String foodItems = 'Items';

  static String addCard = 'Add Card';
  static String cardHolder = 'CARD HOLDER NANE';
  static String cardHolderName = 'NANE';
  static String cardNumber = "CARD NUMBER";
  static String cardNumberHint = "---- ---- ----";
  static String expireDate = 'EXPIRE DATE';
  static String mmYY = 'mm/yyyy';
  static String cvc = 'CVC';
  static String cvcPoint = '***';
  static String addAndMakePayment = 'Add & Make Payment';

  static String payment = 'Payment';

  static String cash = 'Cash';
  static String visa = 'Visa';
  static String master = 'Master';
  static String paypal = 'Paypal';

  static String masterCardHeading = 'No master card added';
  static String masterCardDes = 'You can add a mastercard and save it for later';

  static String addNew = 'ADD NEW';
  static String payAndConfirm = 'PAY & CONFIRM';
  static String total = 'TOTAL';
  static String dollar = '\$';

  static String details = 'Details';

  static String receiverName = 'Robert Fox';
  static String connecting = 'Connecting.......';

  static String address = 'ADDRESS';
  static String addressHint = '3235 Royal Ln. mesa, new jersy 34567';
  static String street = 'STREET';
  static String streetHint = 'hason nagar';

  static String postCode = 'POST CODE';
  static String postCodeHint = '34567';
  static String apartment = 'APARTMENT';
  static String apartmentHint = '345';
  static String labelAs = 'LABEL AS';
  static String home = 'Home';
  static String work = 'Work';
  static String other = 'Other';
  static String saveLocation = 'SAVE LOCATION';

  static String robertFox = 'Robert Fox';

  static String msg1 = 'Are you coming?';
  static String msg2 = 'Hay, Congratulation for order';
  static String msg3 = 'Hey Where are you now?';
  static String msg4 = 'I’m Coming , just wait ...';
  static String msg5 = 'Hurry Up, Man';

  static String msgInputHint = 'Write somethings';

  static String cart = 'Cart';
  static String editItem ='EDIT ITEM';
  static String done = 'DONE';
  static String deliveryAdd = 'DELIVERY ADDRESS';
  static String deliveryAddHint = 'your address';
  static String edit = 'EDIT';
  static String placeOrder = 'PLACE ORDER';
  static String breakDown = 'Breakdown';

  static String pizzaCalzone = 'Pizza Calzone European';
  static String pizzaCalDes = 'Prosciutto e funghi is a pizza variety that is topped with tomato sauce.';
  static String burgerBistro = 'Burger Bistro';
  static String burgerBistroDes = 'Maecenas sed diam eget risus varius blandit sit amet non magna. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.';
  static String size = '14"';
  static double price = 32;

  static String openResturants = 'Open Resturants';

  static String all = 'All';
  static String burger = 'Burger';
  static String pizza = 'Pizza';
  static String sandwich = 'Sandwich';

  static String pasta= "Pasta";
  static String desserts =  "Desserts";
  static String beverage =  'Beverages';
  static String seafood = "Seafood";
  static String indianCuisine =  "Indian Cuisine";


  static String popular = 'Popular';

  static String popCardTitle1 = 'Burger Bistro';
  static String popCardTitle2 = "Smokin' Burger";
  static String popCardTitle3 = "Buffalo Burgers";
  static String popCardTitle4 = "Bullseye Burgers";

  static String popCardSub1 = "Rose garden";
  static String popCardSub2 = "Cafenio Restaurant";
  static String popCardSub3 = "Kaji Firm Kitchen";
  static String popCardSub4 = "Kabab restaurant";

  static double popCardPrice1 = 40;
  static double popCardPrice2 = 60;
  static double popCardPrice3 = 75;
  static double popCardPrice4 = 94;

  static String restName = 'Uttora Coffe House';
  static String roseGarden = 'Rose Garden';
  static String restRating = '4.7';
  static String deliveryType = 'Free';
  static int duration = 20;

  static String sizeName = 'Size';
  static String ingridents ='ingridents';

  static String addToCart = 'ADD TO CART';

  static String restaurantView = 'Resturant View';
  static String spicyRestaurant = 'Spicy Restaurant';
  static String restaurantDes = 'Maecenas sed diam eget risus varius blandit sit amet non magna. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.';
  static List<String> restItems = ['Burger', 'Chicken', 'Rice', 'Wings'];

  static String filterYour = 'Filter your search';

  static String offer = 'OFFER';

  static String delivery = 'Delivery';
  static String pickUp = 'Pick Up';
  static String onlinePayment = 'Online payment available';
  static String deliveryTime = 'Deliver Time';
  static String pricing = 'PRICING';
  static String rating = 'RATING';
  static String filter = 'FILTER';

  static String trackOrder = 'Track Order';

  static String uttoraCoffee = 'Uttora Coffee House';
  static String orderTime = '06 Sept, 10:00pm';

  static int time = 20;
  static String estimateTime = 'Estimated delivery time';

  static String userName = 'Robert F.';
  static String courier = "Courier";

  static String orderReceive = "Your order has been received";
  static String preparingFood = 'The restaurant is preparing your food';
  static String orderPickingUp = 'Your order has been picked up for delivery';
  static String orderArriving = 'Order arriving soon!';

  // restaurants names
  static String restaurant1= 'The Gourmet Haven';
  static String restaurant2= 'Spicy Bites';
  static String restaurant3= 'Ocean’s Catch';
  static String restaurant4= 'Street Feast';
  static String restaurant5= 'Sweet Cravings';
  static String restaurant6= 'Urban Vegan';
  static String restaurant7= 'Freshly Yours';
  static String restaurant8= 'The Noodle House';
  static String restaurant9 = 'Grill & Chill';
  static String restaurant10= 'Tandoori Delight';
  static String restaurant11= 'Heavenly Sips';
  static String restaurant12= 'Flavors of Asia';
  static String restaurant13= 'Simply Healthy';
  static String restaurant14= 'The Dessert Stop';
  static String restaurant15= "The Foodie's Corner";

  // food items names
// pizzas
   static String pizza1 = "Margherita Pizza";
   static String pizza2 = "Pepperoni Pizza";
   static String pizza3 = "BBQ Chicken Pizza";
   static String pizza4 = "Veggie Supreme Pizza";
   static String pizza5 = "Four Cheese Pizza";

   // burgers
  static String burger1 = "Classic Beef Burger";
  static String burger2 = "Crispy Chicken Burger";
  static String burger3 = "Veggie Burger";
  static String burger4 = "Double Cheeseburger";
  static String burger5 = "Spicy Jalapeño Burger";

  // pasta
  static String pasta1 = "Spaghetti Carbonara";
  static String pasta2 = "Penne Arrabbiata";
  static String pasta3 = "Fettuccine Alfredo";
  static String pasta4 = "Pesto Pasta";
  static String pasta5 = "Lasagna";

  // sandwich
  static String sandwich1 = "Grilled Cheese Sandwich";
  static String sandwich2 = "Club Sandwich";
  static String sandwich3 = "Chicken Caesar Wrap";
  static String sandwich4 = "Veggie Panini";
  static String sandwich5 = "Tuna Melt Sandwich";

  // desserts
  static String desserts1 = "Chocolate Brownie";
  static String desserts2 = "Mango Cheesecake";
  static String desserts3 = "Classic Tiramisu";
  static String desserts4 = "Waffle with Ice Cream";
  static String desserts5 = "Fruit Tart";

  // beverages
  static String beverages1 = "Cold Coffee";
  static String beverages2 = "Fresh Lime Soda";
  static String beverages3 = "Strawberry Smoothie";
  static String beverages4 = "Iced Tea";
  static String beverages5 = "Virgin Mojito";

  // seafoods
  static String seafoods1 = "Grilled Salmon";
  static String seafoods2 = "Shrimp Scampi";
  static String seafoods3 = "Lobster Bisque";
  static String seafoods4 = "Fish & Chips";
  static String seafoods5 = "Garlic Butter Crab";

  // indian cuisine
  static String indianCuisine1 = "Butter Chicken";
  static String indianCuisine2 = "Paneer Tikka Masala";
  static String indianCuisine3 = "Biryani (Chicken/Mutton)";
  static String indianCuisine4 = "Garlic Naan";
  static String indianCuisine5 = "Chole Bhature";




  static List<OrderItem> orderList = [
    OrderItem(count: 2, name: 'Burger'),
    OrderItem(count: 4, name: 'Sandwich'),

  ];


  static List<String> times = [
    '10-15 min',
    '20 min',
    '30 min'
  ];

  static String dollarSign = '\$';

  static List<String> foods = [
    AllTexts.burger,
    AllTexts.pizza,
    AllTexts.sandwich,
  ];

  static List<String> categories = [
    AllTexts.all,
    AllTexts.burger,
    AllTexts.pizza,
    AllTexts.sandwich,
    AllTexts.pasta,
    AllTexts.desserts,
    AllTexts.beverage,
    AllTexts.seafood,
    AllTexts.indianCuisine,
  ];

  static List<HomePageCategoryModel> categoriesModels = [
    HomePageCategoryModel(title: AllTexts.all, image: AllImages.pizzaOne),
    HomePageCategoryModel(title:AllTexts.burger, image: AllImages.burgerOne),
    HomePageCategoryModel(title: AllTexts.pizza, image: AllImages.pizzaOne),
    HomePageCategoryModel(title: AllTexts.sandwich, image: AllImages.sandwichOne),
    HomePageCategoryModel(title: AllTexts.pasta, image: AllImages.pastaOne),
    HomePageCategoryModel(title: AllTexts.desserts, image: AllImages.dessertOne),
    HomePageCategoryModel(title: AllTexts.beverage, image: AllImages.beverageOne),
    HomePageCategoryModel(title:  AllTexts.seafood, image: AllImages.seaFoodOne),
    HomePageCategoryModel(title: AllTexts.indianCuisine, image: AllImages.indianOne),

  ];

  static List<HomeV2CatModel> categoriesForHomeScreen = [
    HomeV2CatModel(image: AllImages.pizzaOne, title: AllTexts.all, price: AllTexts.price.toString()),
    HomeV2CatModel(image: AllImages.burgerOne, title: AllTexts.burger, price: AllTexts.price.toString()),
    HomeV2CatModel(image: AllImages.pizzaOne, title: AllTexts.pizza, price: AllTexts.price.toString()),
    HomeV2CatModel(image: AllImages.sandwichOne, title: AllTexts.sandwich, price: AllTexts.price.toString()),
    HomeV2CatModel(image: AllImages.pastaOne, title: AllTexts.pasta, price: AllTexts.price.toString()),
    HomeV2CatModel(image: AllImages.dessertOne, title: AllTexts.desserts, price: AllTexts.price.toString()),
    HomeV2CatModel(image: AllImages.beverageOne, title: AllTexts.beverage, price: AllTexts.price.toString()),
    HomeV2CatModel(image: AllImages.seaFoodOne, title: AllTexts.seafood, price: AllTexts.price.toString()),
    HomeV2CatModel(image: AllImages.indianOne, title: AllTexts.indianCuisine, price: AllTexts.price.toString()),
  ];

  static List<PopularItemCardModel> popularItems = [
    PopularItemCardModel(
       tag: AllTexts.burger,
        image: AllImages.burgerOne,
        title: AllTexts.popCardTitle1,
        subTitle: AllTexts.popCardSub1,
        price: AllTexts.popCardPrice1
    ),PopularItemCardModel(
      tag: AllTexts.burger,
        image: AllImages.burgerTwo,
        title: AllTexts.popCardTitle2,
        subTitle: AllTexts.popCardSub2,
        price: AllTexts.popCardPrice2
    ),PopularItemCardModel(
      tag: AllTexts.burger,
        image: AllImages.burgerThree,
        title: AllTexts.popCardTitle3,
        subTitle: AllTexts.popCardSub3,
        price: AllTexts.popCardPrice3
    ),PopularItemCardModel(
        tag: AllTexts.burger,
        image: AllImages.burgerFive,
        title: AllTexts.popCardTitle4,
        subTitle: AllTexts.popCardSub4,
        price: AllTexts.popCardPrice4
    ),
  ];

  static List<PopularItemCardModel> allFoodItems = [

    // pizzas
    PopularItemCardModel(
      tag: AllTexts.pizza,
        image:AllImages.pizzaOne,
        title: AllTexts.pizza1,
        subTitle: AllTexts.popCardSub1,
        price: AllTexts.popCardPrice1
    ),
    PopularItemCardModel(
      tag: AllTexts.pizza,
        image:AllImages.pizzaTwo,
        title: AllTexts.pizza2,
        subTitle: AllTexts.popCardSub1,
        price: AllTexts.popCardPrice1
    ),
    PopularItemCardModel(
      tag: AllTexts.pizza,
        image:AllImages.pizzaThree,
        title: AllTexts.pizza3,
        subTitle: AllTexts.popCardSub1,
        price: AllTexts.popCardPrice1
    ),
    PopularItemCardModel(
      tag: AllTexts.pizza,
        image:AllImages.pizzaFour,
        title: AllTexts.pizza4,
        subTitle: AllTexts.popCardSub1,
        price: AllTexts.popCardPrice1
    ),
    PopularItemCardModel(
      tag: AllTexts.pizza,
        image:AllImages.pizzaOne,
        title: AllTexts.pizza5,
        subTitle: AllTexts.popCardSub1,
        price: AllTexts.popCardPrice1
    ),

    // burgers
    PopularItemCardModel(
        tag: AllTexts.burger,
        image:AllImages.burgerOne,
        title: AllTexts.pizza1,
        subTitle: AllTexts.popCardSub1,
        price: AllTexts.popCardPrice1
    ),
    PopularItemCardModel(
        tag: AllTexts.burger,
        image:AllImages.burgerTwo,
        title: AllTexts.burger5,
        subTitle: AllTexts.popCardSub1,
        price: AllTexts.popCardPrice1
    ),
    PopularItemCardModel(
        tag: AllTexts.burger,
        image:AllImages.burgerThree,
        title: AllTexts.burger3,
        subTitle: AllTexts.popCardSub1,
        price: AllTexts.popCardPrice1
    ),
    PopularItemCardModel(
        tag: AllTexts.burger,
        image:AllImages.burgerFour,
        title: AllTexts.burger4,
        subTitle: AllTexts.popCardSub1,
        price: AllTexts.popCardPrice1
    ),
    PopularItemCardModel(
        tag: AllTexts.burger,
        image:AllImages.burgerFive,
        title: AllTexts.burger5,
        subTitle: AllTexts.popCardSub1,
        price: AllTexts.popCardPrice1
    ),


    // pastas
    PopularItemCardModel(
        tag: AllTexts.pasta,
        image:AllImages.pastaTwo,
        title: AllTexts.pasta2,
        subTitle: AllTexts.popCardSub1,
        price: AllTexts.popCardPrice1
    ),
    PopularItemCardModel(
        tag: AllTexts.pasta,
        image:AllImages.pastaThree,
        title: AllTexts.pasta3,
        subTitle: AllTexts.popCardSub1,
        price: AllTexts.popCardPrice1
    ),
    PopularItemCardModel(
        tag: AllTexts.pasta,
        image:AllImages.pastaFour,
        title: AllTexts.pasta4,
        subTitle: AllTexts.popCardSub1,
        price: AllTexts.popCardPrice1
    ),
    PopularItemCardModel(
        tag: AllTexts.pasta,
        image:AllImages.pastaFive,
        title: AllTexts.pasta5,
        subTitle: AllTexts.popCardSub1,
        price: AllTexts.popCardPrice1
    ),

    // sandwich
    PopularItemCardModel(
        tag: AllTexts.sandwich,
        image:AllImages.sandwichOne,
        title: AllTexts.sandwich1,
        subTitle: AllTexts.popCardSub1,
        price: AllTexts.popCardPrice1
    ),
    PopularItemCardModel(
        tag: AllTexts.sandwich,
        image:AllImages.sandwichTwo,
        title: AllTexts.sandwich2,
        subTitle: AllTexts.popCardSub1,
        price: AllTexts.popCardPrice1
    ),
    PopularItemCardModel(
        tag: AllTexts.sandwich,
        image:AllImages.sandwichThree,
        title: AllTexts.sandwich3,
        subTitle: AllTexts.popCardSub1,
        price: AllTexts.popCardPrice1
    ),
    PopularItemCardModel(
        tag: AllTexts.sandwich,
        image:AllImages.sandwichFour,
        title: AllTexts.sandwich4,
        subTitle: AllTexts.popCardSub1,
        price: AllTexts.popCardPrice1
    ),
    PopularItemCardModel(
        tag: AllTexts.sandwich,
        image:AllImages.sandwichFive,
        title: AllTexts.sandwich5,
        subTitle: AllTexts.popCardSub1,
        price: AllTexts.popCardPrice1
    ),

    // desserts
    PopularItemCardModel(
        tag: AllTexts.desserts,
        image:AllImages.dessertOne,
        title: AllTexts.desserts1,
        subTitle: AllTexts.popCardSub1,
        price: AllTexts.popCardPrice1
    ),
    PopularItemCardModel(
        tag: AllTexts.desserts,
        image:AllImages.dessertTwo,
        title: AllTexts.desserts2,
        subTitle: AllTexts.popCardSub1,
        price: AllTexts.popCardPrice1
    ),
    PopularItemCardModel(
        tag: AllTexts.desserts,
        image:AllImages.dessertThree,
        title: AllTexts.desserts3,
        subTitle: AllTexts.popCardSub1,
        price: AllTexts.popCardPrice1
    ),
    PopularItemCardModel(
        tag: AllTexts.desserts,
        image:AllImages.dessertFour,
        title: AllTexts.desserts4,
        subTitle: AllTexts.popCardSub1,
        price: AllTexts.popCardPrice1
    ),
    PopularItemCardModel(
        tag: AllTexts.desserts,
        image:AllImages.dessertFive,
        title: AllTexts.desserts5,
        subTitle: AllTexts.popCardSub1,
        price: AllTexts.popCardPrice1
    ),


    // beverages
    PopularItemCardModel(
        tag: AllTexts.beverage,
        image:AllImages.beverageOne,
        title: AllTexts.beverages1,
        subTitle: AllTexts.popCardSub1,
        price: AllTexts.popCardPrice1
    ),
    PopularItemCardModel(
        tag: AllTexts.beverage,
        image:AllImages.beverageTwo,
        title: AllTexts.beverages2,
        subTitle: AllTexts.popCardSub1,
        price: AllTexts.popCardPrice1
    ),
    PopularItemCardModel(
        tag: AllTexts.beverage,
        image:AllImages.beverageThree,
        title: AllTexts.beverages3,
        subTitle: AllTexts.popCardSub1,
        price: AllTexts.popCardPrice1
    ),
    PopularItemCardModel(
        tag: AllTexts.beverage,
        image:AllImages.beverageFour,
        title: AllTexts.beverages4,
        subTitle: AllTexts.popCardSub1,
        price: AllTexts.popCardPrice1
    ),
    PopularItemCardModel(
        tag: AllTexts.beverage,
        image:AllImages.beverageFive,
        title: AllTexts.beverages5,
        subTitle: AllTexts.popCardSub1,
        price: AllTexts.popCardPrice1
    ),

    // sea foods
    PopularItemCardModel(
        tag: AllTexts.seafood,
        image:AllImages.seaFoodOne,
        title: AllTexts.seafoods1,
        subTitle: AllTexts.popCardSub1,
        price: AllTexts.popCardPrice1
    ),
    PopularItemCardModel(
        tag: AllTexts.seafood,
        image:AllImages.seaFoodTwo,
        title: AllTexts.seafoods2,
        subTitle: AllTexts.popCardSub1,
        price: AllTexts.popCardPrice1
    ),
    PopularItemCardModel(
        tag: AllTexts.seafood,
        image:AllImages.seaFoodThree,
        title: AllTexts.seafoods3,
        subTitle: AllTexts.popCardSub1,
        price: AllTexts.popCardPrice1
    ),
    PopularItemCardModel(
        tag: AllTexts.seafood,
        image:AllImages.seaFoodFour,
        title: AllTexts.seafoods4,
        subTitle: AllTexts.popCardSub1,
        price: AllTexts.popCardPrice1
    ),
    PopularItemCardModel(
        tag: AllTexts.seafood,
        image:AllImages.seaFoodFive,
        title: AllTexts.seafoods5,
        subTitle: AllTexts.popCardSub1,
        price: AllTexts.popCardPrice1
    ),

    // indian cuisine
    PopularItemCardModel(
        tag: AllTexts.indianCuisine,
        image:AllImages.indianOne,
        title: AllTexts.indianCuisine1,
        subTitle: AllTexts.popCardSub1,
        price: AllTexts.popCardPrice1
    ),
    PopularItemCardModel(
        tag: AllTexts.indianCuisine,
        image:AllImages.indianTwo,
        title: AllTexts.indianCuisine2,
        subTitle: AllTexts.popCardSub1,
        price: AllTexts.popCardPrice1
    ),
    PopularItemCardModel(
        tag: AllTexts.indianCuisine,
        image:AllImages.indianThree,
        title: AllTexts.indianCuisine3,
        subTitle: AllTexts.popCardSub1,
        price: AllTexts.popCardPrice1
    ),
    PopularItemCardModel(
        tag: AllTexts.indianCuisine,
        image:AllImages.indianFour,
        title: AllTexts.indianCuisine4,
        subTitle: AllTexts.popCardSub1,
        price: AllTexts.popCardPrice1
    ),
    PopularItemCardModel(
        tag: AllTexts.indianCuisine,
        image:AllImages.indianFive,
        title: AllTexts.indianCuisine5,
        subTitle: AllTexts.popCardSub1,
        price: AllTexts.popCardPrice1
    ),


    // sandwiches
  ];



  static List<String> labelBtnTexts = [
    AllTexts.home,
    AllTexts.work,
    AllTexts.other,
  ];

  static List<DeliveryManMessageModel> messages = [
    DeliveryManMessageModel(message: AllTexts.msg1, time: '8.11pm', sender: false),
    DeliveryManMessageModel(message: AllTexts.msg2, time: '8.11pm', sender: true),
    DeliveryManMessageModel(message: AllTexts.msg3, time: '8.11pm', sender: false),
    DeliveryManMessageModel(message: AllTexts.msg4, time: '8.11pm', sender: true),
    DeliveryManMessageModel(message: AllTexts.msg5, time: '8.11pm', sender: false),

    DeliveryManMessageModel(message: AllTexts.msg2, time: '8.11pm', sender: true),
    DeliveryManMessageModel(message: AllTexts.msg3, time: '8.11pm', sender: false),
    DeliveryManMessageModel(message: AllTexts.msg4, time: '8.11pm', sender: true),
    DeliveryManMessageModel(message: AllTexts.msg5, time: '8.11pm', sender: false),
  ];

  static List<CartItemModel> cartItem = [
    CartItemModel(
        title: AllTexts.pizzaCalzone,
        price: AllTexts.price,
        size: AllTexts.size,
        count: 2),
    CartItemModel(
        title: AllTexts.pizzaCalzone,
        price: AllTexts.price,
        size: AllTexts.size,
        count: 1),
    CartItemModel(
        title: AllTexts.pizzaCalzone,
        price: AllTexts.price,
        size: AllTexts.size,
        count: 1),
    CartItemModel(
        title: AllTexts.pizzaCalzone,
        price: AllTexts.price,
        size: AllTexts.size,
        count: 1),
    CartItemModel(
        title: AllTexts.pizzaCalzone,
        price: AllTexts.price,
        size: AllTexts.size,
        count: 1),
    CartItemModel(
        title: AllTexts.pizzaCalzone,
        price: AllTexts.price,
        size: AllTexts.size,
        count: 1),
    CartItemModel(
        title: AllTexts.pizzaCalzone,
        price: AllTexts.price,
        size: AllTexts.size,
        count: 1),
    CartItemModel(
        title: AllTexts.pizzaCalzone,
        price: AllTexts.price,
        size: AllTexts.size,
        count: 1),
    CartItemModel(
        title: AllTexts.pizzaCalzone,
        price: AllTexts.price,
        size: AllTexts.size,
        count: 1),
  ];

  static List<String> ingredientsIcons = [
    AllImages.saltPotIcon,
    AllImages.chickenLegIcon,
    AllImages.onionIcon,
    AllImages.pumkinIcon,
    AllImages.chiliIcon
  ];

  static List<RestaurantModel> openRestaurantsList = [
    RestaurantModel(image: AllImages.restaurantOne, name: AllTexts.restaurant1, items: AllTexts.restItems, rating: AllTexts.restRating, deliveryType: AllTexts.deliveryType, time: AllTexts.time),
    RestaurantModel(image: AllImages.restaurantTwo, name: AllTexts.restaurant2, items: AllTexts.restItems, rating: AllTexts.restRating, deliveryType: AllTexts.deliveryType, time: AllTexts.time),
    RestaurantModel(image: AllImages.restaurantThree, name: AllTexts.restaurant3, items: AllTexts.restItems, rating: AllTexts.restRating, deliveryType: AllTexts.deliveryType, time: AllTexts.time),
  ];

  static List<RestaurantModel> allRestaurantsList = [
    RestaurantModel(image: AllImages.restaurantOne, name: AllTexts.restaurant1, items: AllTexts.restItems, rating: AllTexts.restRating, deliveryType: AllTexts.deliveryType, time: AllTexts.time),
    RestaurantModel(image: AllImages.restaurantTwo,name: AllTexts.restaurant2, items: AllTexts.restItems, rating: AllTexts.restRating, deliveryType: AllTexts.deliveryType, time: AllTexts.time),
    RestaurantModel(image: AllImages.restaurantThree,name: AllTexts.restaurant3, items: AllTexts.restItems, rating: AllTexts.restRating, deliveryType: AllTexts.deliveryType, time: AllTexts.time),
    RestaurantModel(image: AllImages.restaurantFour,name: AllTexts.restaurant4, items: AllTexts.restItems, rating: AllTexts.restRating, deliveryType: AllTexts.deliveryType, time: AllTexts.time),
    RestaurantModel(image: AllImages.restaurantFive,name: AllTexts.restaurant5, items: AllTexts.restItems, rating: AllTexts.restRating, deliveryType: AllTexts.deliveryType, time: AllTexts.time),
    RestaurantModel(image: AllImages.restaurantOne,name: AllTexts.restaurant6, items: AllTexts.restItems, rating: AllTexts.restRating, deliveryType: AllTexts.deliveryType, time: AllTexts.time),
    RestaurantModel(image: AllImages.restaurantTwo,name: AllTexts.restaurant7, items: AllTexts.restItems, rating: AllTexts.restRating, deliveryType: AllTexts.deliveryType, time: AllTexts.time),
    RestaurantModel(image: AllImages.restaurantThree,name: AllTexts.restaurant8, items: AllTexts.restItems, rating: AllTexts.restRating, deliveryType: AllTexts.deliveryType, time: AllTexts.time),
    RestaurantModel(image: AllImages.restaurantFour,name: AllTexts.restaurant9, items: AllTexts.restItems, rating: AllTexts.restRating, deliveryType: AllTexts.deliveryType, time: AllTexts.time),
    RestaurantModel(image: AllImages.restaurantFive,name: AllTexts.restaurant10, items: AllTexts.restItems, rating: AllTexts.restRating, deliveryType: AllTexts.deliveryType, time: AllTexts.time),
    RestaurantModel(image: AllImages.restaurantOne,name: AllTexts.restaurant11, items: AllTexts.restItems, rating: AllTexts.restRating, deliveryType: AllTexts.deliveryType, time: AllTexts.time),
    RestaurantModel(image: AllImages.restaurantTwo,name: AllTexts.restaurant12, items: AllTexts.restItems, rating: AllTexts.restRating, deliveryType: AllTexts.deliveryType, time: AllTexts.time),
    RestaurantModel(image: AllImages.restaurantThree,name: AllTexts.restaurant13, items: AllTexts.restItems, rating: AllTexts.restRating, deliveryType: AllTexts.deliveryType, time: AllTexts.time),
    RestaurantModel(image: AllImages.restaurantFour,name: AllTexts.restaurant14, items: AllTexts.restItems, rating: AllTexts.restRating, deliveryType: AllTexts.deliveryType, time: AllTexts.time),
    RestaurantModel(image: AllImages.restaurantFive,name: AllTexts.restaurant15, items: AllTexts.restItems, rating: AllTexts.restRating, deliveryType: AllTexts.deliveryType, time: AllTexts.time),
  ];










  // authentication section
// headings
  static String login = 'LOG IN';
  static String forget = 'Forget Password';
  static String verification = 'Verification';
  static String signUp = 'SIGN UP';

  // descriptions
  static String loginDes = 'Please sign in to your existing account';
  static String forgetDes = 'Please sign in to your existing account';
  static String veriDes = 'We have sent a code to your email';
  static String emailAdd = 'example@gmail.com';
  static String signUpDes = 'Please sign up to get started';

  // titles
  static String nameHint = 'John Doe';
  static String passHint = '. . . . . . .';
  static String name = 'NAME';
  static String email = 'EMAIL';
  static String password = 'PASSWORD';
  static String retype = 'RE-TYPE PASSWORD';
  static String remember= 'Remember me';
  static String dontHave = 'Don’t have an account?';
  static String or = 'Or';
  static String send = 'SEND CODE';
  static String code = 'Code';
  static String resend = 'Resend';
  static String in50Sec = 'in.50sec';
  static String verify = 'VERIFY';

  static String access= 'ACCESS LOCATION';
  static String accessDes = 'DFOOD WILL ACCESS YOUR LOCATION ONLY WHILE USING THE APP';


  // edit profile texts
  static String editProfile = 'Edit Profile';
  static String fullName = 'FULL NAME';
  static String phoneNumber = 'PHONE NUMBER';
  static String bio = 'BIO';

  static String save = 'SAVE';


  // home screen texts

  static String deliveryTo = 'DELIVERY TO';
  static String halal = 'Halal Lab Office';

  static String greeting = 'Hey Halal,';
  static String afternoon = 'Good Afternoon';

  static String homeSearchHint = 'Search dishes, restaurants';
  static String allCate = 'All Categories';
  static String seeAll = 'See All';


  static String openRest = 'Open Restaurants';

  // open restaurants
  static String restNameOpen = 'Rose Garden Restaurant';
  static String ratingOpenRest = '4.7';
  static String deliveryCost = 'Free';
  static String timeOpen = '20 min';

  // home v2 category texts

  static String starting = 'Starting';
  static String categoryPrice = '\$70';

  static String dialougHeading = 'Hurry Offers!';
  static String dialougSub  = '#1243CD2';
  static String cuponText = 'Use the cupon get 25% discount';
  static String gotIt = 'Got It';

  // my address texts
  static String appBarTitle = 'My Address';
  static String homeCap = 'HOME';
  static String workCap = 'WORK';

  static String homeAdd = '2464 Royal Ln. Mesa, New Jersey 45463';
  static String workAdd = '3891 Ranchview Dr. Richardson, California 62639';

  static String addNewAddress = 'ADD NEW ADDRESS';

  // onboarding texts
  static String next = 'NEXT';
  static String skip = 'Skip';
  static String favourite = 'All your favorites';
  static String favDes = 'Get all your loved foods in one once place, you just place the orer we do the rest';
  static String orderFrom = 'Order from choosen chef';
  static String freeDelivery = 'Free delivery offers';
  static String getStarted = 'GET STARTED';


  // orders texts
  static String orderAppBarTitle ='My Orders';
  static String ongoing = 'Ongoing';
  static String history = 'History';

  static String pizzaHutId = '#242432';
  static String mcId = '#245000';
  static String starBuckId = '#245565';

  static String pizzaHut = 'Pizza Hut';
  static String  mcDonald = 'McDonald';
  static String starbucks = 'Starbucks';

  static String orderPrice = '\$40.15';

  static String pizzaHutDate = '29 Jan, 12.30';
  static String mcDonaldDate = '30 Jan, 12.30';
  static String starBuckDate = '31 Jan, 12.30';

  static String pizzaCount = '03';
  static String mcCount = '02';
  static String starBucksCount ='1';

  static String food = 'Food';
  static String drink = 'Drink';

  static String item = 'Items';

  static String track = 'Track Order';
  static String cancel = 'Cancel';
  static String rate = 'Rate';
  static String reOrder = 'Re-Order';

  static String completed ='Completed';
  static String canceled = 'Canceled';

  static List<OrderModel> orderDetails = [
    OrderModel(
        id: AllTexts.pizzaHutId,
        image: AllImages.pizzaOne,
        title: AllTexts.pizzaHut,
        price: AllTexts.orderPrice,
        date: AllTexts.pizzaHutDate,
        count: AllTexts.pizzaCount,
        foodType: AllTexts.food,
        completed: true
    ),
    OrderModel(
        id: AllTexts.mcId,
        image: AllImages.pizzaTwo,
        title: AllTexts.mcDonald,
        price: AllTexts.orderPrice,
        date: AllTexts.mcDonaldDate,
        count: AllTexts.mcCount,
        foodType: AllTexts.drink,
        completed: true

    ),

    OrderModel(
        id: AllTexts.starBuckId,
        image: AllImages.pizzaThree,
        title: AllTexts.starbucks,
        price: AllTexts.orderPrice,
        date: AllTexts.starBuckDate,
        count: AllTexts.starBucksCount,
        foodType: AllTexts.drink,
        completed: false

    ), OrderModel(
        id: AllTexts.starBuckId,
        image: AllImages.pizzaFour,
        title: AllTexts.starbucks,
        price: AllTexts.orderPrice,
        date: AllTexts.starBuckDate,
        count: AllTexts.starBucksCount,
        foodType: AllTexts.drink,
        completed: false

    ), OrderModel(
        id: AllTexts.starBuckId,
        image: AllImages.pizzaOne,
        title: AllTexts.starbucks,
        price: AllTexts.orderPrice,
        date: AllTexts.starBuckDate,
        count: AllTexts.starBucksCount,
        foodType: AllTexts.drink,
        completed: false

    ),
  ];


  // payment success screen
  static String paymentSuccessHeading = 'Congratulations!';
  static String paySuccessDes = 'You successfully made a payment,\n enjoy our service!';

  // personal profile
  static String profileUser= 'Vishal Khadok';
  static String bioText = 'I love fast food';
  static String personalNumber = 'PERSONAL NUMBER';
  static String personalEmailAdd = 'hello@halallab.com';
  static String perNum = '408-841-0926';
  static String menuTitle = 'Profile';


  static String personalProAppBar = 'Personal Info';
  static String addresses = 'Addresses';
  static String favouriteCap = 'Favourite';
  static String notifications = 'Notifications';
  static String paymentMethod = 'Payment Method';
  static String faqs = 'FAQs';
  static String userReview = 'User Reviews';
  static String settings = 'Settings';
  static String logOut = 'Log Out';
  
  
  // search Screen texts
  static String search = 'Search';
  static String recentKeyword = 'Recent Keyword';
  static String suggestedRestaurant = 'Suggested Restaurants';
  static String populerFastFood = 'Popular Fast food';

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

  static List<String> keywords = [AllTexts.pizza,  AllTexts.sandwich, AllTexts.burger, AllTexts.sandwich];

  static List<RestaurantModel> suggestRestaurants = [
    RestaurantModel(image: AllImages.restaurantOne, name: AllTexts.pansiRestaurant, rating: AllTexts.pansiRating),
    RestaurantModel(image: AllImages.restaurantTwo, name: AllTexts.spicyBurger, rating: AllTexts.burgerRating),
    RestaurantModel(image: AllImages.restaurantThree, name: AllTexts.coffeeClub, rating: AllTexts.coffeeRating),
  ];

  static List<PopularItemCardModel> popularFastFoods = [
    PopularItemCardModel(image: AllImages.pizzaOne, title: AllTexts.europeanPizza, des: AllTexts.europeanSub),
    PopularItemCardModel(image: AllImages.pizzaTwo, title: AllTexts.buffaloPizza, des: AllTexts.buffaloSub),
    PopularItemCardModel(image: AllImages.pizzaThree, title: AllTexts.buffaloPizza, des: AllTexts.buffaloSub),
  ];
}




