import 'package:flutter/material.dart';
import 'package:iline_car_wash_app/core/theme/app_theme.dart';
import 'package:iline_car_wash_app/features/onboarding/presentation/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      theme: AppTheme.lightTheme,
    );
  }
}
