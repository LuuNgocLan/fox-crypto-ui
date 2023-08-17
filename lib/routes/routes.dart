import 'package:flutter/material.dart';
import 'package:fox_crypto_ui/screens/onboarding/onboarding_page.dart';

class Routes {
  Routes._();

  static const String onboarding = '/onboarding';
  static const String getStarted = '/getStarted';
  static const String login = '/login';
  static const String signup = '/signup';

  static final routes = <String, WidgetBuilder>{
    onboarding: (BuildContext context) => const OnboardingPage(),
  };
}
