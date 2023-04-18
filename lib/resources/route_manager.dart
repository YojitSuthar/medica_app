import 'import_resources.dart';
import 'package:medica/ui/screens/screens.dart';

final List<GetPage<dynamic>> routes = [
  GetPage(name: "/SplashScreen", page: () => const SplashScreen()),
  GetPage(
      name: "/IntroScreen",
      page: () => const IntroScreen(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 450)),
  GetPage(name: "/OnBoardingScreen", page: () =>  OnBoardingScreen()),
];
