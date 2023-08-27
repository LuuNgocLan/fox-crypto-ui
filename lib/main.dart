import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fox_crypto_ui/config/app_colors.dart';
import 'package:fox_crypto_ui/generated/l10n.dart';
import 'package:fox_crypto_ui/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CryptoFox",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primary,
          primary: AppColors.primary,
          onPrimary: AppColors.background,
          tertiary: AppColors.primary,
          background: AppColors.background,
        ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.light,
            statusBarBrightness: Brightness.dark,
          ),
        ),
      ),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      initialRoute: Routes.completed,
      routes: Routes.routes,
    );
  }
}
