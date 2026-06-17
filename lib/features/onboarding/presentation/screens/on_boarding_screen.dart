import 'package:flutter/material.dart';

part '../widgets/build_on_boarding_body.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _BuildOnBoardingBody(),
    );
  }
}