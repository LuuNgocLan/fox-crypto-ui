import 'package:flutter/material.dart';
import 'package:fox_crypto_ui/screens/account_verification/account_verification_page.dart';
import 'package:fox_crypto_ui/screens/account_verification/completed_screen.dart';
import 'package:fox_crypto_ui/screens/account_verification/selfie_photo_page.dart';
import 'package:fox_crypto_ui/screens/account_verification/upload_document_page.dart';
import 'package:fox_crypto_ui/screens/get_started/get_started_page.dart';
import 'package:fox_crypto_ui/screens/home/home_page.dart';
import 'package:fox_crypto_ui/screens/login/login_page.dart';
import 'package:fox_crypto_ui/screens/onboarding/onboarding_page.dart';
import 'package:fox_crypto_ui/screens/sign_up/sign_up_page.dart';
import 'package:fox_crypto_ui/screens/verification_code/verification_code_page.dart';

//Note:  Warning: When using initialRoute, don’t define a home property on MaterialApp
class Routes {
  Routes._();

  static const String onboarding = '/onboarding';
  static const String started = '/started';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String verificationCode = '/verificationCode';
  static const String accountVerifyStep1 = '/accountVerifyStep1';
  static const String accountVerifyStep2 = '/accountVerifyStep2';
  static const String accountVerifyStep3 = '/accountVerifyStep3';
  static const String completed = '/completed';
  static const String home = '/home';

  static final routes = <String, WidgetBuilder>{
    onboarding: (BuildContext context) => const OnboardingPage(),
    started: (BuildContext context) => const GetStartedPage(),
    login: (BuildContext context) => const LoginPage(),
    signup: (BuildContext context) => const SignUpPage(),
    verificationCode: (BuildContext context) => const VerificationCodePage(),
    accountVerifyStep1: (BuildContext context) =>
        const AccountVerificationPage(),
    accountVerifyStep2: (BuildContext context) => const UploadDocumentPage(),
    accountVerifyStep3: (BuildContext context) => const SelfiePhotoPage(),
    completed: (BuildContext context) => const CompletedScreen(),
    home: (BuildContext context) => const HomePage(),
  };
}
