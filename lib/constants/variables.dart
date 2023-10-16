import 'package:flutter/material.dart';
import 'package:restaurant_talks/models/Iitems/category_model.dart';

// Screen Titles
const String appTitle = 'Restaurant Talks';
const String editProfileScreen = 'Edit Profile';
const String guestNumberScreen = 'Guest Number';
const String emailVerificationScreen = "Email Verification";

// Regexes
const String emailRegexString = r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

// Error Messages
const String invalidEmailMessage = 'Invalid Email!';
const String invalidPasswordMessage = 'Invalid Password!';
const String invalidManagerNameMessage = 'Manager name cannot be empty!';
const String invalidRestaurantNameMessage = 'Restaurant name cannot be empty!';
const String invalidPrefectureMessage = 'Prefecture cannot be empty!';
const String notVerifiedMessage = "You haven't verified your email yet. Please check your inbox and click the verification link.";

// Messages
const String pleaseVerifYourEmailMessage = "Please verify your email to proceed.\nWe've sent you a verification link.\nCheck your email and click on the link provided.";
const String verificationEmailSentAgainMessage = "Verification email sent again! Please check your inbox.";

// Items Labels
const String itemNameLabel = 'Name';
const String itemStockCountLabel = 'Stock Count';
const String itemCategoryLabel = 'Category';
const String itemdescriptionLabel = 'Description';
const String defaultItemCategoryLabel = 'All Categories';

// Paths
const String signupScreenPath = '/signup';
const String loginScreenPath = '/';
const String itemIndexScreenPath = '/items';
const String itemFormScreenPath = 'form';
const String profileScreenPath = '/profile';
const String guestNumberScreenPath = '/guest_number';
const String itemEditScreenPath = 'edit';
const String emailVarificationScreenPath = '/signup/email_varification';

// Buttons
const String loginButton = 'Login';
const String toSignupScreenButton = 'Create an account';
const String signupButton = 'Sign Up';
const String toLoginScreenButton = 'Already have an account?';
const String okButton = 'OK';
const String saveButton = 'Save';
const String addCountButton = '+';
const String subtractCounbtButton = '-';
const String logoutButton = 'Logout';
const String resendVerificationEmailButton = "Resend Verification Email";
const String confirmVarifiedButton = "I've Verified. Continue!";
const String deleteAccountButton = 'Delete Account';

// Nav Bars
const String homeNavBar = 'Home';
const String profileNavBar = 'Profile';

// Search Text Fields
const String searchItemHintText = 'Search...';

// Hint Texts
const String emailHintText = 'Email';
const String passwordHintText = 'Password';
const String managerNameHintText = "Manager's Name";
const String restaurantNameHintText = "Restaurant's Name";
const String guestNumberHintText = "Guest Number";
const String guestNumberAppBarHintText = "Guests: ";
// const String prefectureHintText = 'Prefecture';

// Screen Indexes
const int itemIndexScreenIndex = 0;
const int profileScreenIndex = 1;

// Colors
const Color darkBlue = Color(0xFF28527a);
const Color lightBlue = Color(0xFF8ac4d0);
const Color darkYellow = Color(0xFFf4d160);
const Color lightYellow = Color(0xFFfbeeac);
const Color whiteColor = Color(0xFFffffff);
const Color blackColor = Color.fromARGB(243, 52, 52, 52);

// Integers
const double appTitleFontSize = 30;
const double normalFontSize = 15;

// Item Categories
final List<Category> itemCategories = [
  const Category(id: 0, value: allCategory),
  const Category(id: 1, value: appetizerCategory),
  const Category(id: 2, value: mainDishCategory),
  const Category(id: 3, value: dessertCategory),
  const Category(id: 4, value: beverageCategory),
  const Category(id: 5, value: otherCategory),
];
const String notSelected = 'Not Selected';
const String allCategory = 'All Category';
const String appetizerCategory = 'Appetizers';
const String mainDishCategory = 'Main Dishes';
const String dessertCategory = 'Desserts';
const String beverageCategory = 'Beverages';
const String otherCategory = 'Others';