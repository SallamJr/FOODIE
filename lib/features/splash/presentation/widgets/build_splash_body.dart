part of '../screens/splash_screen.dart';

class _BuildSplashBody extends StatelessWidget {
  const _BuildSplashBody();

  /// There is additional way to define route names instead of using AppRoutes class.
  /// You can use a string directly in the route name.
  /// For example: '/splash' instead of AppRoutes.splash.
  /// For example: static const String splash = 'splash';
  /// or static const String routeName = 'splash';
  /// And the case in app_router.dart will be like this:
  /// case SpalshScreen.routeName:
  /// return MaterialPageRoute(builder: (context) => const SplashScreen());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// This Text Widget will be changed to be an animation image with app name .
            Text(
              'Foodie',
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                fontSize: 40,
                fontWeight: FontWeight.w900,
              ),
            ),
            Lottie.asset(
              AppAssets.splashLogo2,
              width: double.infinity,
              height: 250,
              fit: BoxFit.fill,
            ),
          ],
        ),
      ),
    );
  }
}
