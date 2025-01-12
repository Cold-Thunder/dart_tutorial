import 'package:assignment7_ui/config/models/order_model.dart';

class OrdersText{
  static String appBarTitle ='My Orders';
  static String ongoing = 'Ongoing';
  static String history = 'History';

  static String pizzaHutId = '#242432';
  static String mcId = '#245000';
  static String starBuckId = '#245565';

  static String pizzaHut = 'Pizza Hut';
  static String  mcDonald = 'McDonald';
  static String starbucks = 'Starbucks';

  static String price = '\$40.15';

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
        id: OrdersText.pizzaHutId,
        title: OrdersText.pizzaHut,
        price: OrdersText.price,
        date: OrdersText.pizzaHutDate,
        count: OrdersText.pizzaCount,
        foodType: OrdersText.food,
      completed: true
    ),
    OrderModel(
        id: OrdersText.mcId,
        title: OrdersText.mcDonald,
        price: OrdersText.price,
        date: OrdersText.mcDonaldDate,
        count: OrdersText.mcCount,
        foodType: OrdersText.drink,
        completed: true

    ),

    OrderModel(
        id: OrdersText.starBuckId,
        title: OrdersText.starbucks,
        price: OrdersText.price,
        date: OrdersText.starBuckDate,
        count: OrdersText.starBucksCount,
        foodType: OrdersText.drink,
        completed: false

    ), OrderModel(
        id: OrdersText.starBuckId,
        title: OrdersText.starbucks,
        price: OrdersText.price,
        date: OrdersText.starBuckDate,
        count: OrdersText.starBucksCount,
        foodType: OrdersText.drink,
        completed: false

    ), OrderModel(
        id: OrdersText.starBuckId,
        title: OrdersText.starbucks,
        price: OrdersText.price,
        date: OrdersText.starBuckDate,
        count: OrdersText.starBucksCount,
        foodType: OrdersText.drink,
        completed: false

    ),
  ];

}