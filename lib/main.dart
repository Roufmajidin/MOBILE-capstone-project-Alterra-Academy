import 'package:flutter/material.dart';
import 'package:gofit_apps/view/booking_detail/payment_confirmation.dart';
import 'package:gofit_apps/view/booking_detail/payment_information.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: SplashScreen(),
      home: PaymentInformation(),
    );
  }
}
