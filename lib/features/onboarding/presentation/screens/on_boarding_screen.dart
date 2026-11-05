import 'package:carousel_slider/carousel_options.dart' show CarouselOptions;
import 'package:carousel_slider/carousel_slider.dart' show CarouselSlider;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodie/core/utils/app_assets.dart';
import 'dart:convert';

part '../widgets/build_on_boarding_body.dart';
part '../widgets/build_on_boarding_header_images_holder.dart';
part '../widgets/build_on_boarding_text_holders.dart';
part '../widgets/build_on_boarding_bottom_controls.dart';
part '../widgets/build_on_boarding_custom_button.dart';
part '../widgets/build_on_boarding_dots_indicator.dart';
class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _BuildOnBoardingBody(),
    );
  }
}