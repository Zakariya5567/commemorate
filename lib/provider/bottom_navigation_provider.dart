import 'package:commemorate/view/screens/auth_screens/sigin_screen.dart';
import 'package:commemorate/view/screens/funeral_guide_screens/funeral_guide_screen.dart';
import 'package:commemorate/view/screens/new_journey_screens/new_journey_screen.dart';
import 'package:commemorate/view/screens/obituray_screens/obituary_screen.dart';
import 'package:commemorate/view/screens/preparation_list_screens/preparation_list_screen.dart';
import 'package:commemorate/view/screens/thank_you_screens/thank_you_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigationProvider extends ChangeNotifier {
  int currentIndex = 0;
  // Screens List
  /*=========================================================================
      Define there screens we are going to navigate from bottom navigation bar
      in bottomNavigationIndex list
    ========================================================================*/
  List<Widget> bottomNavigationIndex = [
    const FuneralGuideScreen(),
    const PreparationListScreen(),
    const ObituaryScreen(),
    const ThankYouScreen(),
    const NewJourneyScreen(),
  ];
  // set Current Index
  setCurrentIndex(int newIndex) {
    currentIndex = newIndex;
    notifyListeners();
  }

  // Rest Index
  resetIndex() {
    currentIndex = 0;
    notifyListeners();
  }
}
