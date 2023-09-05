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

  /// `You’re verified`
  String get completed_title {
    return Intl.message(
      'You’re verified',
      name: 'completed_title',
      desc: '',
      args: [],
    );
  }

  /// `You have been verified your information completely. Let’s make transactions!`
  String get completed_msg {
    return Intl.message(
      'You have been verified your information completely. Let’s make transactions!',
      name: 'completed_msg',
      desc: '',
      args: [],
    );
  }

  /// `Back to Home`
  String get back_to_home {
    return Intl.message(
      'Back to Home',
      name: 'back_to_home',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get sign_up {
    return Intl.message(
      'Sign up',
      name: 'sign_up',
      desc: '',
      args: [],
    );
  }

  /// `Log in`
  String get login {
    return Intl.message(
      'Log in',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Fast and Flexible \nTrading`
  String get get_started_title {
    return Intl.message(
      'Fast and Flexible \nTrading',
      name: 'get_started_title',
      desc: '',
      args: [],
    );
  }

  /// `Top Coins`
  String get top_coins {
    return Intl.message(
      'Top Coins',
      name: 'top_coins',
      desc: '',
      args: [],
    );
  }

  /// `News`
  String get news {
    return Intl.message(
      'News',
      name: 'news',
      desc: '',
      args: [],
    );
  }

  /// `See All`
  String get see_all {
    return Intl.message(
      'See All',
      name: 'see_all',
      desc: '',
      args: [],
    );
  }

  /// `Total Balance`
  String get total_balance {
    return Intl.message(
      'Total Balance',
      name: 'total_balance',
      desc: '',
      args: [],
    );
  }

  /// `Today’s Profit`
  String get today_profit {
    return Intl.message(
      'Today’s Profit',
      name: 'today_profit',
      desc: '',
      args: [],
    );
  }

  /// `Email Address`
  String get email_address {
    return Intl.message(
      'Email Address',
      name: 'email_address',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email address`
  String get email_hint {
    return Intl.message(
      'Enter your email address',
      name: 'email_hint',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Enter your password`
  String get password_hint {
    return Intl.message(
      'Enter your password',
      name: 'password_hint',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password?`
  String get forgot_password {
    return Intl.message(
      'Forgot password?',
      name: 'forgot_password',
      desc: '',
      args: [],
    );
  }

  /// `New to Foxcrypto?`
  String get new_to_foxcrypto {
    return Intl.message(
      'New to Foxcrypto?',
      name: 'new_to_foxcrypto',
      desc: '',
      args: [],
    );
  }

  /// ` Create an account`
  String get create_new_account {
    return Intl.message(
      ' Create an account',
      name: 'create_new_account',
      desc: '',
      args: [],
    );
  }

  /// `At least 8 characters with uppercase letters and numbers`
  String get password_rule {
    return Intl.message(
      'At least 8 characters with uppercase letters and numbers',
      name: 'password_rule',
      desc: '',
      args: [],
    );
  }

  /// `Accept`
  String get accept {
    return Intl.message(
      'Accept',
      name: 'accept',
      desc: '',
      args: [],
    );
  }

  /// `Terms of Use`
  String get tearm_of_use {
    return Intl.message(
      'Terms of Use',
      name: 'tearm_of_use',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacy_policy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacy_policy',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get already_have_an_account {
    return Intl.message(
      'Already have an account?',
      name: 'already_have_an_account',
      desc: '',
      args: [],
    );
  }

  /// `Welcome To \nFox`
  String get welcome_to_fox {
    return Intl.message(
      'Welcome To \nFox',
      name: 'welcome_to_fox',
      desc: '',
      args: [],
    );
  }

  /// `crypto`
  String get crypto {
    return Intl.message(
      'crypto',
      name: 'crypto',
      desc: '',
      args: [],
    );
  }

  /// `Transaction \nSecurity `
  String get transaction_security {
    return Intl.message(
      'Transaction \nSecurity ',
      name: 'transaction_security',
      desc: '',
      args: [],
    );
  }

  /// `Fast and reliable \nMarket updated`
  String get fast_and_reliable_market_update {
    return Intl.message(
      'Fast and reliable \nMarket updated',
      name: 'fast_and_reliable_market_update',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Verification`
  String get verification {
    return Intl.message(
      'Verification',
      name: 'verification',
      desc: '',
      args: [],
    );
  }

  /// `Code have been sent to your email`
  String get code_have_been_sent_to_email {
    return Intl.message(
      'Code have been sent to your email',
      name: 'code_have_been_sent_to_email',
      desc: '',
      args: [],
    );
  }

  /// `Resend Code`
  String get resend_code {
    return Intl.message(
      'Resend Code',
      name: 'resend_code',
      desc: '',
      args: [],
    );
  }

  /// `Verify`
  String get verify {
    return Intl.message(
      'Verify',
      name: 'verify',
      desc: '',
      args: [],
    );
  }

  /// `Verify account`
  String get verify_account {
    return Intl.message(
      'Verify account',
      name: 'verify_account',
      desc: '',
      args: [],
    );
  }

  /// `Select Country of Resident`
  String get select_country_of_resident {
    return Intl.message(
      'Select Country of Resident',
      name: 'select_country_of_resident',
      desc: '',
      args: [],
    );
  }

  /// `Select country`
  String get select_country {
    return Intl.message(
      'Select country',
      name: 'select_country',
      desc: '',
      args: [],
    );
  }

  /// `Select a valid Government-issued document`
  String get select_valid_government {
    return Intl.message(
      'Select a valid Government-issued document',
      name: 'select_valid_government',
      desc: '',
      args: [],
    );
  }

  /// `Identify Card`
  String get identify_card {
    return Intl.message(
      'Identify Card',
      name: 'identify_card',
      desc: '',
      args: [],
    );
  }

  /// `Passport`
  String get passport {
    return Intl.message(
      'Passport',
      name: 'passport',
      desc: '',
      args: [],
    );
  }

  /// `Driver’s License`
  String get driver_license {
    return Intl.message(
      'Driver’s License',
      name: 'driver_license',
      desc: '',
      args: [],
    );
  }

  /// `This information is used for identity verification only, and will be kept secure by CrypCoin`
  String get verify_account_checkbox {
    return Intl.message(
      'This information is used for identity verification only, and will be kept secure by CrypCoin',
      name: 'verify_account_checkbox',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continue_action {
    return Intl.message(
      'Continue',
      name: 'continue_action',
      desc: '',
      args: [],
    );
  }

  /// `Upload Image of  ID Card`
  String get upload_image_of_id_card {
    return Intl.message(
      'Upload Image of  ID Card',
      name: 'upload_image_of_id_card',
      desc: '',
      args: [],
    );
  }

  /// `Upload front page`
  String get upload_front_page {
    return Intl.message(
      'Upload front page',
      name: 'upload_front_page',
      desc: '',
      args: [],
    );
  }

  /// `Upload back page`
  String get upload_back_page {
    return Intl.message(
      'Upload back page',
      name: 'upload_back_page',
      desc: '',
      args: [],
    );
  }

  /// `Goverment-issued`
  String get goverment_issued {
    return Intl.message(
      'Goverment-issued',
      name: 'goverment_issued',
      desc: '',
      args: [],
    );
  }

  /// `Original full-size, unedited document`
  String get original_full_size_unedited_document {
    return Intl.message(
      'Original full-size, unedited document',
      name: 'original_full_size_unedited_document',
      desc: '',
      args: [],
    );
  }

  /// `Place documents against a single-coloured background`
  String get place_documents_against_a_single_coloured_background {
    return Intl.message(
      'Place documents against a single-coloured background',
      name: 'place_documents_against_a_single_coloured_background',
      desc: '',
      args: [],
    );
  }

  /// `Readable, well-lit, coloured images`
  String get readable_well_lit_coloured_images {
    return Intl.message(
      'Readable, well-lit, coloured images',
      name: 'readable_well_lit_coloured_images',
      desc: '',
      args: [],
    );
  }

  /// `No black and white images`
  String get no_black_and_white_images {
    return Intl.message(
      'No black and white images',
      name: 'no_black_and_white_images',
      desc: '',
      args: [],
    );
  }

  /// `No edited or expired documents`
  String get no_edited_or_expired_documents {
    return Intl.message(
      'No edited or expired documents',
      name: 'no_edited_or_expired_documents',
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
