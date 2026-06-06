import 'package:flutter/material.dart';
import 'package:foodie/core/utils/app_assets.dart';
import 'package:lottie/lottie.dart';

part '../widgets/build_splash_body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: _BuildSplashBody()));
  }
}
