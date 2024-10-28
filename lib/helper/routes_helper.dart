import 'package:commemorate/provider/thank_you_provider.dart';
import 'package:commemorate/view/screens/funeral_guide_screens/funeral_guide_screen.dart';
import 'package:commemorate/view/screens/new_journey_screens/new_journey_screen.dart';
import 'package:commemorate/view/screens/obituray_screens/obituary_screen.dart';
import 'package:commemorate/view/screens/preparation_list_screens/preparation_list_screen.dart';
import 'package:flutter/material.dart';
import '../view/screens/auth_screens/sigin_screen.dart';
import '../view/screens/home_screen/home_screen.dart';
import '../view/screens/splash_screen/splash_screen.dart';
import '../view/screens/thank_you_screens/thank_you_screen.dart';

class RouterHelper {
  static const initial = "/";
  static const signInScreen = "/signInScreen";
  static const homeScreen = "/HomeScreen";
  static const funeralGuideScreen = "/funeralGuideScreen";
  static const preparationListScreen = "/preparationListScreen";
  static const obituaryScreen = "/obituaryScreen";
  static const thankYouScreen = "/thankYouScreen";
  static const newJourneyScreen = "/newJourneyScreen";

  static Map<String, Widget Function(BuildContext context)> routes = {
    initial: (context) => const SplashScreen(),
    signInScreen: (context) => const SignInScreen(),
    homeScreen: (context) => const HomeScreen(),
    funeralGuideScreen: (context) => const FuneralGuideScreen(),
    preparationListScreen: (context) => const PreparationListScreen(),
    obituaryScreen: (context) => const ObituaryScreen(),
    thankYouScreen: (context) => const ThankYouScreen(),
    newJourneyScreen: (context) => const NewJourneyScreen(),
  };
}
