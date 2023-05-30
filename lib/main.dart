import 'package:flutter/material.dart';

import 'package:gofit_apps/view/splash_screen/splash_screen.dart';

import 'package:gofit_apps/view/register/register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: SplashScreen());
  }
}
