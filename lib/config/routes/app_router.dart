import 'package:flutter/material.dart';
import 'package:foodie/config/routes/app_routes.dart';
import 'package:foodie/features/onboarding/presentation/screens/on_boarding_screen.dart';
import 'package:foodie/features/splash/presentation/screens/splash_screen.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.splash:
      return MaterialPageRoute(builder: (context) => const SplashScreen());
    case AppRoutes.onboarding:
      return MaterialPageRoute(builder: (context) => const OnBoardingScreen());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
