import 'package:commemorate/view/screens/auth_screens/sigin_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigationProvider extends ChangeNotifier {
  int currentIndex = 0;
  // Screens List
  /*=========================================================================
      Define there screens we are going to navigate from bottom navigation bar
      in bottomNavigationIndex list
    ========================================================================*/
  List<Widget> bottomNavigationIndex = [
    const SignInScreen(),
    const SignInScreen(),
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
