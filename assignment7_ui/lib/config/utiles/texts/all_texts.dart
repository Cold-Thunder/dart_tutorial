import 'package:assignment7_ui/config/models/delivery_man_message.dart';
import 'package:assignment7_ui/ui/widgets/home_screen_widgets/delivery_to_section.dart';

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

}