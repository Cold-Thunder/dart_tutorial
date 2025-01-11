import 'package:assignment7_ui/config/models/cart_item_model.dart';
import 'package:assignment7_ui/config/models/delivery_man_message.dart';
import 'package:assignment7_ui/config/models/order_item.dart';
import 'package:assignment7_ui/config/models/popular_item_card_model.dart';
import 'package:assignment7_ui/config/utiles/images/all_images.dart';

class AllTexts{
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

  static String burger = 'Burger';
  static String pizza = 'Pizza';
  static String sandwich = 'Sandwich';

  static String popularBurgers = 'Popular Burgers';

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
    AllTexts.sandwich,
  ];

  static List<PopularItemCardModel> popularItems = [
    PopularItemCardModel(
        title: AllTexts.popCardTitle1,
        subTitle: AllTexts.popCardSub1,
        price: AllTexts.popCardPrice1
    ),PopularItemCardModel(
        title: AllTexts.popCardTitle2,
        subTitle: AllTexts.popCardSub2,
        price: AllTexts.popCardPrice2
    ),PopularItemCardModel(
        title: AllTexts.popCardTitle3,
        subTitle: AllTexts.popCardSub3,
        price: AllTexts.popCardPrice3
    ),PopularItemCardModel(
        title: AllTexts.popCardTitle4,
        subTitle: AllTexts.popCardSub4,
        price: AllTexts.popCardPrice4
    ),
  ];

  static List<PopularItemCardModel> burgers = [
    PopularItemCardModel(
        title: AllTexts.popCardTitle1,
        subTitle: AllTexts.popCardSub1,
        price: AllTexts.popCardPrice1
    ),PopularItemCardModel(
        title: AllTexts.popCardTitle2,
        subTitle: AllTexts.popCardSub2,
        price: AllTexts.popCardPrice2
    ),PopularItemCardModel(
        title: AllTexts.popCardTitle3,
        subTitle: AllTexts.popCardSub3,
        price: AllTexts.popCardPrice3
    ),PopularItemCardModel(
        title: AllTexts.popCardTitle4,
        subTitle: AllTexts.popCardSub4,
        price: AllTexts.popCardPrice4
    ),PopularItemCardModel(
        title: AllTexts.popCardTitle1,
        subTitle: AllTexts.popCardSub1,
        price: AllTexts.popCardPrice1
    ),PopularItemCardModel(
        title: AllTexts.popCardTitle2,
        subTitle: AllTexts.popCardSub2,
        price: AllTexts.popCardPrice2
    ),PopularItemCardModel(
        title: AllTexts.popCardTitle3,
        subTitle: AllTexts.popCardSub3,
        price: AllTexts.popCardPrice3
    ),PopularItemCardModel(
        title: AllTexts.popCardTitle4,
        subTitle: AllTexts.popCardSub4,
        price: AllTexts.popCardPrice4
    ),PopularItemCardModel(
        title: AllTexts.popCardTitle3,
        subTitle: AllTexts.popCardSub3,
        price: AllTexts.popCardPrice3
    ),PopularItemCardModel(
        title: AllTexts.popCardTitle4,
        subTitle: AllTexts.popCardSub4,
        price: AllTexts.popCardPrice4
    ),
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
  ];

  static List<String> ingredientsIcons = [
    AllImages.saltPotIcon,
    AllImages.chickenLegIcon,
    AllImages.onionIcon,
    AllImages.pumkinIcon,
    AllImages.chiliIcon
  ];

}