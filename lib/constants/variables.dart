import 'package:flutter/material.dart';
import 'package:restaurant_talks/models/Iitems/category_model.dart';
import 'package:restaurant_talks/view_model/users/profile_view_model.dart';

// Screen Titles
const String appTitle = 'Restaurant Talks';
String editProfileScreen =
    currentLanguage == englishLanguage ? 'Edit Profile' : 'プロフィール編集';
String guestNumberScreen =
    currentLanguage == englishLanguage ? 'Guest Number' : 'ゲスト番号';
String emailVerificationScreen =
    currentLanguage == englishLanguage ? 'Email Verification' : 'メール確認';

// Regexes
const String emailRegexString = r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

// Error Messages
String invalidEmailMessage =
    currentLanguage == englishLanguage ? 'Invalid Email!' : '無効なメールアドレス!';
String invalidPasswordMessage =
    currentLanguage == englishLanguage ? 'Invalid Password!' : '無効なパスワード!';
String invalidManagerNameMessage = currentLanguage == englishLanguage
    ? 'Manager name cannot be empty!'
    : 'マネージャー名は必須です!';
String invalidRestaurantNameMessage = currentLanguage == englishLanguage
    ? 'Restaurant name cannot be empty!'
    : 'レストラン名は必須です!';
String invalidLanguageMessage = currentLanguage == englishLanguage
    ? 'Language cannot be empty!'
    : '言語は必須です!';
String enterValidNumberMessage = currentLanguage == englishLanguage
    ? 'Enter a valid number'
    : '有効な数字を入力してください';
String userNotLoggedInMessage = currentLanguage == englishLanguage
    ? 'User not logged in'
    : 'ユーザーがログインしていません';
String userNotAuthenticatedMessage = currentLanguage == englishLanguage
    ? "User is not authenticated."
    : "ユーザーは認証されていません。";
String invalidGuestNumberMessage = currentLanguage == englishLanguage
    ? "Invalid guest number entered."
    : "無効なゲスト番号が入力されました。";
String loginFailedMessage = currentLanguage == englishLanguage
    ? "Login failed! Please check your credentials."
    : "ログインに失敗しました！ 資格情報を確認してください。";
String notVerifiedMessage = currentLanguage == englishLanguage
    ? "You haven't verified your email yet. Please check your inbox and click the verification link."
    : "まだメールを確認していません。受信トレイを確認し、確認リンクをクリックしてください。";
String signupFailedMessage = currentLanguage == englishLanguage
    ? "Signup failed! Please check your input."
    : "サインアップに失敗しました！ 入力を確認してください。";
String guestNumberAppBarHintText =
    currentLanguage == englishLanguage ? "Guests: " : "ゲスト:";

// const String invalidPrefectureMessage = 'Prefecture cannot be empty!';

// Messages
String pleaseVerifYourEmailMessage = currentLanguage == englishLanguage
    ? "Please verify your email to proceed.\nWe've sent you a verification link.\nCheck your email and click on the link provided."
    : "進むためにメールを確認してください。\n確認リンクを送信しました。\nメールをチェックして、提供されたリンクをクリックしてください。";
String verificationEmailSentAgainMessage = currentLanguage == englishLanguage
    ? "Verification email sent again! Please check your inbox."
    : "確認メールを再送しました！受信トレイを確認してください。";

// Items Labels
String itemNameLabel = currentLanguage == englishLanguage ? 'Name' : '名前';
String itemStockCountLabel =
    currentLanguage == englishLanguage ? 'Stock Count' : '在庫数';
String itemCategoryLabel =
    currentLanguage == englishLanguage ? 'Category' : 'カテゴリ';
String itemdescriptionLabel =
    currentLanguage == englishLanguage ? 'Description' : '説明';
String defaultItemCategoryLabel =
    currentLanguage == englishLanguage ? 'All Categories' : '全てのカテゴリ';

// Paths
const String signupScreenPath = '/signup';
const String loginScreenPath = '/login';
const String itemIndexScreenPath = '/';
const String profileScreenPath = '/profile';
const String guestNumberScreenPath = '/guest_number';
const String itemFormScreenPath = '/edit';
const String emailVarificationScreenPath = '/signup/email_varification';

// Buttons
String loginButton = currentLanguage == englishLanguage ? 'Login' : 'ログイン';
String toSignupScreenButton =
    currentLanguage == englishLanguage ? 'Create an account' : 'アカウントを作成';
String signupButton = currentLanguage == englishLanguage ? 'Sign Up' : 'サインアップ';
String toLoginScreenButton = currentLanguage == englishLanguage
    ? 'Already have an account?'
    : '既にアカウントを持っていますか？';
String okButton = currentLanguage == englishLanguage ? 'OK' : 'OK';
String saveButton = currentLanguage == englishLanguage ? 'Save' : '保存';
const String addCountButton = '+';
const String subtractCounbtButton = '-';
String logoutButton = currentLanguage == englishLanguage ? 'Logout' : 'ログアウト';
String resendVerificationEmailButton = currentLanguage == englishLanguage
    ? "Resend Verification Email"
    : "確認メールを再送";
String confirmVarifiedButton = currentLanguage == englishLanguage
    ? "I've Verified. Continue!"
    : "確認しました。続ける！";
String deleteAccountButton =
    currentLanguage == englishLanguage ? "Delete Account" : "アカウントを削除";

// Nav Bars
String homeNavBar = currentLanguage == englishLanguage ? 'Home' : 'ホーム';
String profileNavBar =
    currentLanguage == englishLanguage ? 'Profile' : 'プロフィール';

// Search Text Fields
String searchItemHintText =
    currentLanguage == englishLanguage ? 'Search...' : '検索...';

// Hint Texts
String emailHintText = currentLanguage == englishLanguage ? 'Email' : 'メール';
String passwordHintText =
    currentLanguage == englishLanguage ? 'Password' : 'パスワード';
String managerNameHintText =
    currentLanguage == englishLanguage ? "Manager's Name" : 'マネージャーの名前';
String restaurantNameHintText =
    currentLanguage == englishLanguage ? "Restaurant's Name" : 'レストランの名前';
String guestNumberHintText =
    currentLanguage == englishLanguage ? "Guest Number" : 'ゲストの数';
String languageHintText =
    currentLanguage == englishLanguage ? "Language" : '言語';
String nameHintText = currentLanguage == englishLanguage ? 'Name' : '名前';
String descriptionHintText =
    currentLanguage == englishLanguage ? 'Description' : '説明';
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

// Languages
const String englishLanguage = 'English';
const String enSelectItem = 'enSelectItem';
const String japaneseLanguage = '日本語';
const String jaSelectItem = 'jaSelectItem';

// Firebase
const String emailField = 'email';
const String managerNameField = 'managerName';
const String restaurantNameField = 'restaurantName';
const String languageField = 'language';
const String guestNumberField = 'guestNumber';
const String userIdField = 'userId';
const String nameField = 'name';
const String idField = 'id';
const String stockCountField = 'stockCount';
const String categoryIdField = 'categoryId';
const String descriptionField = 'description';
const String createdAtField = 'createdAt';
const String updatedAtField = 'updatedAt';

const String usersCollection = 'users';
const String guestNumbersCollection = 'guestNumbers';
const String itemsCollection = 'items';
