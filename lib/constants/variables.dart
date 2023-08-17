import 'package:flutter/material.dart';

// Screen Titles
const String appTitle = 'Restaurant Talks';

// Regexes
const String emailRegexString = r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

// Error Messages
const String invalidEmailMessage = 'Invalid Email!';
const String invalidPasswordMessage = 'Invalid Password!';
const String invalidManagerNameMessage = 'Manager name cannot be empty!';
const String invalidRestaurantNameMessage = 'Restaurant name cannot be empty!';
const String invalidPrefectureMessage = 'Prefecture cannot be empty!';

// Items Label
const String itemNameLabel = 'Name';
const String itemStockCountLabel = 'Stock Count';
const String itemCategoryLabel = 'Category';
const String itemdescriptionLabel = 'Description';
const String defaultItemCategoryLabel = 'All Categories';

// Paths
const String signupScreenPath = 'signup';
const String loginScreenPath = '/';
const String itemIndexScreenPath = '/items';
const String itemFormScreenPath = 'form';

// Buttons
const String loginButton = 'Login';
const String toSignupScreenButton = 'Create an account';
const String signupButton = 'Sign Up';
const String toLoginScreenButton = 'Already have an account?';
const String okButton = 'OK';
const String saveButton = 'Save';
const String addCountButton = '+';
const String subtractCounbtButton = '-';

// Hint Texts
const String emailHintText = 'Email';
const String passwordHintText = 'Password';
const String managerNameHintText = "Manager's Name";
const String restaurantNameHintText = "Restaurant's Name";
const String prefectureHintText = 'Prefecture';

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

// Prefectures
const List<String> prefectures = [
  'Hokkaido',
  'Aomori',
  'Iwate',
  'Miyagi',
  'Akita',
  'Yamagata',
  'Fukushima',
  'Ibaraki',
  'Tochigi',
  'Gunma',
  'Saitama',
  'Chiba',
  'Tokyo',
  'Kanagawa',
  'Niigata',
  'Toyama',
  'Ishikawa',
  'Fukui',
  'Yamanashi',
  'Nagano',
  'Gifu',
  'Shizuoka',
  'Aichi',
  'Mie',
  'Shiga',
  'Kyoto',
  'Osaka',
  'Hyogo',
  'Nara',
  'Wakayama',
  'Tottori',
  'Shimane',
  'Okayama',
  'Hiroshima',
  'Yamaguchi',
  'Tokushima',
  'Kagawa',
  'Ehime',
  'Kochi',
  'Fukuoka',
  'Saga',
  'Nagasaki',
  'Kumamoto',
  'Oita',
  'Miyazaki',
  'Kagoshima',
  'Okinawa'
];

// Item Categories
const List<String> itemCategories = [
  'All Categories',
  'Foods',
  'Beverages',
  'Desserts',
  'Other',
];
const String notSelected = 'Not Selected';