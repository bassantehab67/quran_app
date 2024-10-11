import 'package:flutter/material.dart';
import 'package:quran_app/config/theme/my_theme.dart';
import 'package:quran_app/core/routes.dart';
import 'package:quran_app/presentation/screens/home.dart';
import 'package:quran_app/presentation/screens/splash.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        Routes.SplashRoute: (_) => const SplashScreen(),
        Routes.HomeRoute: (_) => HomeScreen(),
      },
      initialRoute: Routes.SplashRoute,
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme,
    );
  }
}
