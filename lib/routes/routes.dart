import 'package:flutter/material.dart';
import 'package:fox_crypto_ui/screens/get_started/get_started_page.dart';
import 'package:fox_crypto_ui/screens/login/login_page.dart';
import 'package:fox_crypto_ui/screens/onboarding/onboarding_page.dart';

//Note:  Warning: When using initialRoute, don’t define a home property on MaterialApp
class Routes {
  Routes._();

  static const String onboarding = '/onboarding';
  static const String started = '/started';
  static const String login = '/login';
  static const String signup = '/signup';

  static final routes = <String, WidgetBuilder>{
    onboarding: (BuildContext context) => const OnboardingPage(),
    started: (BuildContext  context) => const GetStartedPage(),
    login: (BuildContext  context) => const LoginPage(),
  };
}
