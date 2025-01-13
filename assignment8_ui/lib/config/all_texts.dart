import 'package:assignment8_ui/config/images/all_images.dart';
import 'package:assignment8_ui/config/models/active_user_model.dart';
import 'package:assignment8_ui/config/models/chat_users_model.dart';
import 'package:assignment8_ui/config/models/message_model.dart';

class AllTexts{
  static String chatRoom = 'Chat Room';
  static String logInAccount = 'Login Your Account';
  static String email = 'Email Address';
  static String password = 'Password';
  static String forget ='Forgot Password?';
  static String login = 'Login';
  static String or = 'or continue with';
  static String google = 'Google';
  static String dontHave = "Don't have an account?";
  static String signUp = 'Sign Up';
  static String writeMsg = 'Write Message...';


  static String userName = 'Ajendra Sutariya';
  static String message = 'Hi, How are you?';

  static String searchHere = 'Search here...';

  static String today = 'Today';
  static String time = '3.29pm';
  
  static List<ActiveUserModel> activeUsers = [
    ActiveUserModel(image: AllImages.profileImage, story: true),
    ActiveUserModel(image: AllImages.profileImage, story: false),
    ActiveUserModel(image: AllImages.profileImage, story: true),
    ActiveUserModel(image: AllImages.profileImage, story: false),
    ActiveUserModel(image: AllImages.profileImage, story: false),
    ActiveUserModel(image: AllImages.profileImage, story: false),
    ActiveUserModel(image: AllImages.profileImage, story: false),
  ];


  static List<ChatUsersModel> chatUsers = [
    ChatUsersModel(image: AllImages.profileImage, name: userName, message: message, time: time, msgCount: 2, active: true),
    ChatUsersModel(image: AllImages.profileImage, name: userName, message: message, time: time, msgCount: 3, active: true),
    ChatUsersModel(image: AllImages.profileImage, name: userName, message: message, time: time, msgCount: 0, active: false),
    ChatUsersModel(image: AllImages.profileImage, name: userName, message: message, time: time, msgCount: 5, active: true),
    ChatUsersModel(image: AllImages.profileImage, name: userName, message: message, time: time, msgCount: 2, active: true),
    ChatUsersModel(image: AllImages.profileImage, name: userName, message: message, time: time, msgCount: 6, active: false),
    ChatUsersModel(image: AllImages.profileImage, name: userName, message: message, time: time, msgCount: 1, active: true),
    ChatUsersModel(image: AllImages.profileImage, name: userName, message: message, time: time, msgCount: 2, active: true),
    ChatUsersModel(image: AllImages.profileImage, name: userName, message: message, time: time, msgCount: 0, active: true),
    ChatUsersModel(image: AllImages.profileImage, name: userName, message: message, time: time, msgCount: 2, active: true),
    ChatUsersModel(image: AllImages.profileImage, name: userName, message: message, time: time, msgCount: 2, active: false),
  ];

  static List<MessageModel> messages = [
    MessageModel(message: message, time: time, receiver: false),
    MessageModel(message: message, time: time, receiver: true),
    MessageModel(message: message, time: time, receiver: false),
    MessageModel(message: message, time: time, receiver: true),
    MessageModel(message: message, time: time, receiver: false),
    MessageModel(message: message, time: time, receiver: true),
    MessageModel(message: message, time: time, receiver: false),

    MessageModel(message: message, time: time, receiver: true),
    MessageModel(message: message, time: time, receiver: false),
    MessageModel(message: message, time: time, receiver: true),
    MessageModel(message: message, time: time, receiver: false),
    MessageModel(message: message, time: time, receiver: true),
    MessageModel(message: message, time: time, receiver: false),
    MessageModel(message: message, time: time, receiver: true),
    MessageModel(message: message, time: time, receiver: false),
  ];
}