part of '../screens/on_boarding_screen.dart';

class _BuildOnBoardingBody extends StatelessWidget {
  const _BuildOnBoardingBody();

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
     bottom: false,
      child: Stack(
        children: [
          _BuildOnBoardingHeaderImagesHolder(),
        //  _BuildOnBoardingTextHolders(),
    //      _BuildOnBoardingBottomControls(),
        ],
      )
    );
  }
}