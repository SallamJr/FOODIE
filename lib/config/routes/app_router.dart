import 'package:flutter/material.dart';
import 'package:foodie/config/routes/app_routes.dart';
import 'package:foodie/features/splash/presentation/screens/splash_screen.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.splash:
      return MaterialPageRoute(builder: (context) => const SplashScreen());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
