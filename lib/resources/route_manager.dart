import 'import_resources.dart';
import 'package:medica/ui/screens/screens.dart';

final List<GetPage<dynamic>> routes = [
  GetPage(name: "/SplashScreen", page: () => const SplashScreen()),
  GetPage(name: "/AdminScreen", page: () => const AdminScreen()),
  GetPage(
      name: "/IntroScreen",
      page: () => const IntroScreen(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 450)),
  GetPage(name: "/OnBoardingScreen", page: () => OnBoardingScreen()),
  GetPage(
      name: "/SignupScreen",
      page: () => SignupScreen(),
      transition: Transition.downToUp,
      transitionDuration: const Duration(milliseconds: 250)),
  GetPage(
      name: "/ForgetPassword",
      page: () => ForgetPassword(),
      transition: Transition.downToUp,
      transitionDuration: const Duration(milliseconds: 250)),
  GetPage(
      name: "/LoginScreen",
      page: () => LoginScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 250)),
  GetPage(
      name: "/SocialScreen",
      page: () => SocialScreen(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 250)),
  GetPage(name: "/UserFillProfile", page: () => UserFillProfile()),
  GetPage(name: "/CreatePinScreen", page: () => CreatePinScreen()),
  GetPage(name: "/NotificationScreen", page: () => const NotificationScreen()),
  GetPage(name: "/WishListScreen", page: () => const WishListScreen()),
  GetPage(
      name: "/HomePage",
      page: () => HomePage(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 350)),
];
