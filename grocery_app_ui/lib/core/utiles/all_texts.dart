
import '../models/category_card_model.dart';
import '../models/product_model.dart';
import 'all_images.dart';

class AllTexts{
    static String skip = 'Skip';

    static String home = 'Home';
    static String office = 'Office';
    static String search = 'Search';
    static String recentSearch = 'Recent Search';
    static String trending = 'Trending Now';

    static String removeItem = 'Remove Item';
    static String selectAnAddress = 'Select an Address';

    static String remove = 'Remove';

    static String deliveryFree = 'Delivery Free';
    static String free = 'Free';

    static String deliveryTo = 'Delivery To';

    static String change = 'Change';
    static String payUsing = 'Pay Using';

    static String placeOrder = 'Place Order';

    static String paymentType = 'Visa 6589';

    static String groundTotal = 'Ground Total';

    static String checkout = 'Checkout';

    static String itemTotal = 'Item Total';
    static String discount = 'Discount';

    static String applyCoupon = 'APPLY COUPON';

    static String sortBy = 'Sort By';
    static String noItemFound= 'No Item Found';

    static String relevance = 'Relevance';
    static String popularity = 'Popularity';
    static String lowToHigh = 'Price: Low to High';

    static String beforeYouCheck  = 'Before you checkout';

    static String showingResult = 'Showing Result for ';

    static String onboardOneHead = 'Buy Groceries Easily with Us';
    static String onboardTwoHead = 'We Deliver Grocery at Your Doorstep';
    static String onboardThreeHead = 'All You kitchen Needs are here';

    static String onboardDes = 'It is a long established fact that a reader will be distracted by the readable.';

    static String welcomeBack = 'Welcome Back';
    static String loginWith = 'Log in to your account using email \nor social networks';
    static String loginWithApple = 'Login with Apple';
    static String loginWithGoogle = 'Login with Google';
    static String continueWithSocial = 'Or continue with social account';
    static String phoneNumber = 'Phone Number';
    static String password = 'Password';
    static String forgetPass = 'Forgot Password?';
    static String login = 'Login';
    static String dontHave = "Didn't have an account?";
    static String register = 'Register';

    static String createOne = 'Create New Account';
    static String signupDes = 'Set up you username and password. You can change it later.';
    static String email = 'Email';
    static String name = 'Name';
    static String enterPass = 'Enter Password';
    static String reenterPass = "Re-enter Password";
    static String haveAccount = 'Already have an account?';

    static String cancel = 'Cancel';
    static String next = 'Next';

    static String verifyEmail ='Verify Your Email Address';
    static String emailAddress = '(205) 555-0100';

    static String verDes = 'We will send the authentication code to the email address you entered.\n Do you want continue?';

    static String enterOtp ='Enter OTP';
    static String codeSend = 'A Verification code has been sent to';

    static String verify = 'Verify';
    static String dontReceive = "Don't receive the code";
    static String resend = 'Resend';
    static String time = '30';

    static String created = "Account Created Successfully";
    static String congratesDes = 'Your account created successfully.\n Listen you favourite music.';
    static String gotoHome = 'Go to Home';


    static String presPrice = '12';
    static String prePrice = '14';
    static String add = 'Add';

    static String vegAndFruits = 'Vegetables & Fruits';
    static String dairyAndBreak = 'Dairy & Breakfast';
    static String coldDrink = 'Cold Drinks & Juices';
    static String instantFood = 'Instant & Frozen Food';
    static String teaCoffee = 'Tea & Coffee';
    static String attaRice = 'Atta, Rice & Dal';
    static String masala = 'Masala, Oil & Dry Fruits';
    static String chicken = 'Chicken, Meat & Fish';

    static String surfexDes = 'Surf Excel Easy Wash Detergent Power';
    static String dal = 'Fortune Arhar Dal (Toor Dal)';

    static String surfSize = '500 ml';
    static String dalWeight = '1 Kg';

    static String addNewAddress = 'Add New Address';


    static String homeAddress = '6391 Elgin St. Celina, Delaware 10299';
    static String officeAddress = '7 No. R.k. Mission Road, Mymensingh';

    static String seeAll = 'See All';

    static String categoryHeading = 'Shop By Category';
    static String bestDeal = 'Best Deal';

    static String adTitle ='World Food Festival, Bring the world to your Kitchen!';
    static String shopNow = 'Shop Now';

    static String viewCart = 'View Cart';

    
    
    static List<CategoryCardModel> categoryCards = [
        CategoryCardModel(title: AllTexts.vegAndFruits, image: AllImages.vegetables, index: 0,),
        CategoryCardModel(title: AllTexts.dairyAndBreak, image: AllImages.dairy, index: 1,),
        CategoryCardModel(title: AllTexts.coldDrink, image: AllImages.drinks, index: 2,),
        CategoryCardModel(title: AllTexts.instantFood, image: AllImages.noodles, index: 3,),
        CategoryCardModel(title: AllTexts.teaCoffee, image: AllImages.coffeeTea, index: 4,),
        CategoryCardModel(title: AllTexts.attaRice, image: AllImages.atta, index: 5,),
        CategoryCardModel(title: AllTexts.masala, image: AllImages.masala, index: 6,),
        CategoryCardModel(title: AllTexts.chicken, image: AllImages.meat, index: 7,),
    ];

    static List<ProductModel> productsCards = [
        ProductModel(id: 0, image: AllImages.surfexel ,title: AllTexts.surfexDes, presPrice: presPrice, prePrice: prePrice, size: AllTexts.surfSize),
        ProductModel(id: 1, image: AllImages.dal, title: AllTexts.dal, presPrice: presPrice, prePrice: prePrice, size: AllTexts.dalWeight),
        ProductModel(id: 2, image: AllImages.surfexel, title: AllTexts.surfexDes, presPrice: presPrice, prePrice: prePrice, size: AllTexts.surfSize),
    ];

    static List<ProductModel> bestDealsCards = [
        ProductModel(id: 0, image: AllImages.surfexel ,title: AllTexts.surfexDes, presPrice: presPrice, prePrice: prePrice, size: AllTexts.surfSize),
        ProductModel(id: 1, image: AllImages.dal, title: AllTexts.dal, presPrice: presPrice, prePrice: prePrice, size: AllTexts.dalWeight),
        ProductModel(id: 2, image: AllImages.coffeePot, title: AllTexts.surfexDes, presPrice: presPrice, prePrice: prePrice, size: AllTexts.surfSize),
        ProductModel(id: 3, image: AllImages.surfexel ,title: AllTexts.surfexDes, presPrice: presPrice, prePrice: prePrice, size: AllTexts.surfSize),
        ProductModel(id: 4, image: AllImages.chiliPack, title: AllTexts.dal, presPrice: presPrice, prePrice: prePrice, size: AllTexts.dalWeight),
        ProductModel(id: 5, image: AllImages.drinks, title: AllTexts.surfexDes, presPrice: presPrice, prePrice: prePrice, size: AllTexts.surfSize),
        ProductModel(id: 6, image: AllImages.surfexel ,title: AllTexts.surfexDes, presPrice: presPrice, prePrice: prePrice, size: AllTexts.surfSize),
        ProductModel(id: 7, image: AllImages.noodles, title: AllTexts.dal, presPrice: presPrice, prePrice: prePrice, size: AllTexts.dalWeight),
        ProductModel(id: 8, image: AllImages.chiliPack, title: AllTexts.dal, presPrice: presPrice, prePrice: prePrice, size: AllTexts.dalWeight),
        ProductModel(id: 9, image: AllImages.drinks, title: AllTexts.surfexDes, presPrice: presPrice, prePrice: prePrice, size: AllTexts.surfSize),
        ProductModel(id: 10, image: AllImages.surfexel ,title: AllTexts.surfexDes, presPrice: presPrice, prePrice: prePrice, size: AllTexts.surfSize),
        ProductModel(id: 11, image: AllImages.noodles, title: AllTexts.dal, presPrice: presPrice, prePrice: prePrice, size: AllTexts.dalWeight),
        ProductModel(id: 12, image: AllImages.atta, title: AllTexts.attaRice, presPrice: presPrice, prePrice: prePrice, size: AllTexts.dalWeight),

    ];
}