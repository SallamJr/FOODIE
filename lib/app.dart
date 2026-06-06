import 'package:flutter/material.dart';
import 'package:foodie/config/routes/app_router.dart';
import 'package:foodie/config/routes/app_routes.dart';
import 'package:foodie/features/splash/presentation/screens/splash_screen.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: AppRoutes.splash,
      home: Scaffold(body: SplashScreen()),
    );
  }
}
