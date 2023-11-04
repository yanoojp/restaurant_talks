// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Edit Profile`
  String get editProfileScreen {
    return Intl.message(
      'Edit Profile',
      name: 'editProfileScreen',
      desc: '',
      args: [],
    );
  }

  /// `Guest Number`
  String get guestNumberScreen {
    return Intl.message(
      'Guest Number',
      name: 'guestNumberScreen',
      desc: '',
      args: [],
    );
  }

  /// `Email Verification`
  String get emailVerificationScreen {
    return Intl.message(
      'Email Verification',
      name: 'emailVerificationScreen',
      desc: '',
      args: [],
    );
  }

  /// `Invalid Email!`
  String get invalidEmailMessage {
    return Intl.message(
      'Invalid Email!',
      name: 'invalidEmailMessage',
      desc: '',
      args: [],
    );
  }

  /// `Invalid Password!`
  String get invalidPasswordMessage {
    return Intl.message(
      'Invalid Password!',
      name: 'invalidPasswordMessage',
      desc: '',
      args: [],
    );
  }

  /// `Manager name cannot be empty!`
  String get invalidManagerNameMessage {
    return Intl.message(
      'Manager name cannot be empty!',
      name: 'invalidManagerNameMessage',
      desc: '',
      args: [],
    );
  }

  /// `Restaurant name cannot be empty!`
  String get invalidRestaurantNameMessage {
    return Intl.message(
      'Restaurant name cannot be empty!',
      name: 'invalidRestaurantNameMessage',
      desc: '',
      args: [],
    );
  }

  /// `Language cannot be empty!`
  String get invalidLanguageMessage {
    return Intl.message(
      'Language cannot be empty!',
      name: 'invalidLanguageMessage',
      desc: '',
      args: [],
    );
  }

  /// `You haven't verified your email yet. Please check your inbox and click the verification link.`
  String get notVerifiedMessage {
    return Intl.message(
      'You haven\'t verified your email yet. Please check your inbox and click the verification link.',
      name: 'notVerifiedMessage',
      desc: '',
      args: [],
    );
  }

  /// `User not logged in`
  String get userNotLoggedInMessage {
    return Intl.message(
      'User not logged in',
      name: 'userNotLoggedInMessage',
      desc: '',
      args: [],
    );
  }

  /// `Enter a valid number`
  String get enterValidNumberMessage {
    return Intl.message(
      'Enter a valid number',
      name: 'enterValidNumberMessage',
      desc: '',
      args: [],
    );
  }

  /// `User is not authenticated.`
  String get userNotAuthenticatedMessage {
    return Intl.message(
      'User is not authenticated.',
      name: 'userNotAuthenticatedMessage',
      desc: '',
      args: [],
    );
  }

  /// `Invalid guest number entered.`
  String get invalidGuestNumberMessage {
    return Intl.message(
      'Invalid guest number entered.',
      name: 'invalidGuestNumberMessage',
      desc: '',
      args: [],
    );
  }

  /// `Signup failed! Please check your input.`
  String get signupFailedMessage {
    return Intl.message(
      'Signup failed! Please check your input.',
      name: 'signupFailedMessage',
      desc: '',
      args: [],
    );
  }

  /// `Login failed! Please check your credentials.`
  String get loginFailedMessage {
    return Intl.message(
      'Login failed! Please check your credentials.',
      name: 'loginFailedMessage',
      desc: '',
      args: [],
    );
  }

  /// `Please verify your email to proceed. We've sent you a verification link. Check your email and click on the link provided.`
  String get pleaseVerifyYourEmailMessage {
    return Intl.message(
      'Please verify your email to proceed. We\'ve sent you a verification link. Check your email and click on the link provided.',
      name: 'pleaseVerifyYourEmailMessage',
      desc: '',
      args: [],
    );
  }

  /// `Verification email sent again! Please check your inbox.`
  String get verificationEmailSentAgainMessage {
    return Intl.message(
      'Verification email sent again! Please check your inbox.',
      name: 'verificationEmailSentAgainMessage',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get itemNameLabel {
    return Intl.message(
      'Name',
      name: 'itemNameLabel',
      desc: '',
      args: [],
    );
  }

  /// `Stock Count`
  String get itemStockCountLabel {
    return Intl.message(
      'Stock Count',
      name: 'itemStockCountLabel',
      desc: '',
      args: [],
    );
  }

  /// `Category`
  String get itemCategoryLabel {
    return Intl.message(
      'Category',
      name: 'itemCategoryLabel',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get itemdescriptionLabel {
    return Intl.message(
      'Description',
      name: 'itemdescriptionLabel',
      desc: '',
      args: [],
    );
  }

  /// `All Categories`
  String get defaultItemCategoryLabel {
    return Intl.message(
      'All Categories',
      name: 'defaultItemCategoryLabel',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get loginButton {
    return Intl.message(
      'Login',
      name: 'loginButton',
      desc: '',
      args: [],
    );
  }

  /// `Create an account`
  String get toSignupScreenButton {
    return Intl.message(
      'Create an account',
      name: 'toSignupScreenButton',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signupButton {
    return Intl.message(
      'Sign Up',
      name: 'signupButton',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get toLoginScreenButton {
    return Intl.message(
      'Already have an account?',
      name: 'toLoginScreenButton',
      desc: '',
      args: [],
    );
  }

  /// `I've Verified. Continue!`
  String get confirmVarifiedButton {
    return Intl.message(
      'I\'ve Verified. Continue!',
      name: 'confirmVarifiedButton',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get okButton {
    return Intl.message(
      'OK',
      name: 'okButton',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get saveButton {
    return Intl.message(
      'Save',
      name: 'saveButton',
      desc: '',
      args: [],
    );
  }

  /// `+`
  String get addCountButton {
    return Intl.message(
      '+',
      name: 'addCountButton',
      desc: '',
      args: [],
    );
  }

  /// `-`
  String get subtractCountButton {
    return Intl.message(
      '-',
      name: 'subtractCountButton',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logoutButton {
    return Intl.message(
      'Logout',
      name: 'logoutButton',
      desc: '',
      args: [],
    );
  }

  /// `Resend Verification Email`
  String get resendVerificationEmailButton {
    return Intl.message(
      'Resend Verification Email',
      name: 'resendVerificationEmailButton',
      desc: '',
      args: [],
    );
  }

  /// `I've Verified. Continue!`
  String get confirmVerifiedButton {
    return Intl.message(
      'I\'ve Verified. Continue!',
      name: 'confirmVerifiedButton',
      desc: '',
      args: [],
    );
  }

  /// `Delete Account`
  String get deleteAccountButton {
    return Intl.message(
      'Delete Account',
      name: 'deleteAccountButton',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get homeNavBar {
    return Intl.message(
      'Home',
      name: 'homeNavBar',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profileNavBar {
    return Intl.message(
      'Profile',
      name: 'profileNavBar',
      desc: '',
      args: [],
    );
  }

  /// `Search...`
  String get searchItemHintText {
    return Intl.message(
      'Search...',
      name: 'searchItemHintText',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get emailHintText {
    return Intl.message(
      'Email',
      name: 'emailHintText',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get passwordHintText {
    return Intl.message(
      'Password',
      name: 'passwordHintText',
      desc: '',
      args: [],
    );
  }

  /// `Manager's Name`
  String get managerNameHintText {
    return Intl.message(
      'Manager\'s Name',
      name: 'managerNameHintText',
      desc: '',
      args: [],
    );
  }

  /// `Restaurant's Name`
  String get restaurantNameHintText {
    return Intl.message(
      'Restaurant\'s Name',
      name: 'restaurantNameHintText',
      desc: '',
      args: [],
    );
  }

  /// `Guest Number`
  String get guestNumberHintText {
    return Intl.message(
      'Guest Number',
      name: 'guestNumberHintText',
      desc: '',
      args: [],
    );
  }

  /// `Guests: `
  String get guestNumberAppBarHintText {
    return Intl.message(
      'Guests: ',
      name: 'guestNumberAppBarHintText',
      desc: '',
      args: [],
    );
  }

  /// `Please verify your email to proceed.\nWe've sent you a verification link.\nCheck your email and click on the link provided.`
  String get pleaseVerifYourEmailMessage {
    return Intl.message(
      'Please verify your email to proceed.\nWe\'ve sent you a verification link.\nCheck your email and click on the link provided.',
      name: 'pleaseVerifYourEmailMessage',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get languageHintText {
    return Intl.message(
      'Language',
      name: 'languageHintText',
      desc: '',
      args: [],
    );
  }

  /// `name`
  String get nameHintText {
    return Intl.message(
      'name',
      name: 'nameHintText',
      desc: '',
      args: [],
    );
  }

  /// `description`
  String get descriptionHintText {
    return Intl.message(
      'description',
      name: 'descriptionHintText',
      desc: '',
      args: [],
    );
  }

  /// `All Category`
  String get allCategory {
    return Intl.message(
      'All Category',
      name: 'allCategory',
      desc: '',
      args: [],
    );
  }

  /// `Appetizers`
  String get appetizerCategory {
    return Intl.message(
      'Appetizers',
      name: 'appetizerCategory',
      desc: '',
      args: [],
    );
  }

  /// `Main Dishes`
  String get mainDishCategory {
    return Intl.message(
      'Main Dishes',
      name: 'mainDishCategory',
      desc: '',
      args: [],
    );
  }

  /// `Desserts`
  String get dessertCategory {
    return Intl.message(
      'Desserts',
      name: 'dessertCategory',
      desc: '',
      args: [],
    );
  }

  /// `Beverages`
  String get beverageCategory {
    return Intl.message(
      'Beverages',
      name: 'beverageCategory',
      desc: '',
      args: [],
    );
  }

  /// `Others`
  String get otherCategory {
    return Intl.message(
      'Others',
      name: 'otherCategory',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get englishLanguage {
    return Intl.message(
      'English',
      name: 'englishLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Japanese`
  String get japaneseLanguage {
    return Intl.message(
      'Japanese',
      name: 'japaneseLanguage',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ja'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
