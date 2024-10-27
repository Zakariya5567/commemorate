import 'package:flutter/material.dart';
import '../view/screens/auth_screens/sigin_screen.dart';
import '../view/screens/home_screen/home_screen.dart';
import '../view/screens/splash_screen/splash_screen.dart';

class RouterHelper {
  static const initial = "/";
  static const signInScreen = "/signInScreen";
  static const homeScreen = "/HomeScreen";

  static Map<String, Widget Function(BuildContext context)> routes = {
    initial: (context) => const SplashScreen(),
    signInScreen: (context) => const SignInScreen(),
    homeScreen: (context) => const HomeScreen(),
  };
}
