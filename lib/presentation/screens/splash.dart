import 'package:flutter/material.dart';
import 'package:quran_app/core/assets_manager.dart';
import 'package:quran_app/core/routes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, Routes.HomeRoute);
    });
    return Container(
      child: Image.asset(
        AssetsManager.lightSplash,
        fit: BoxFit.fill,
      ),
    );
  }
}
