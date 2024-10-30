
import 'package:commemorate/view/screens/funeral_guide_screens/pages/funeral_home_reservation_screen.dart';
import 'package:commemorate/view/screens/funeral_guide_screens/pages/funeral_inheritance_screen.dart';
import 'package:commemorate/view/screens/funeral_guide_screens/pages/funeral_intro_screen.dart';
import 'package:commemorate/view/screens/funeral_guide_screens/pages/funeral_preparation_for_supplies_screen.dart';
import 'package:commemorate/view/screens/funeral_guide_screens/pages/funeral_search_and_add_burial_ground_screen.dart';
import 'package:commemorate/view/screens/funeral_guide_screens/pages/funeral_search_and_add_crematorium_screen.dart';
import 'package:commemorate/view/screens/funeral_guide_screens/pages/funeral_search_and_add_home_screen.dart';
import 'package:commemorate/view/screens/funeral_guide_screens/pages/funeral_securing_the_deceased_screen.dart';
import 'package:commemorate/view/screens/funeral_guide_screens/pages/funeral_send_obituary_text_screen.dart';
import 'package:commemorate/view/screens/funeral_guide_screens/pages/funeral_thank_you_text_screen.dart';
import 'package:commemorate/view/screens/funeral_guide_screens/pages/funeral_things_to_take_care_screen.dart';
import 'package:commemorate/view/screens/funeral_guide_screens/pages/funeral_whether_the_deceased_screen.dart';
import 'package:flutter/material.dart';

import '../view/screens/funeral_guide_screens/components/funeral_guide_constant.dart';

class FuneralGuideProvider extends ChangeNotifier {

  bool isBringExpanded = false;
  PageController pageController = PageController();
  int activePageValue = 0;

  TextEditingController makeUpController = TextEditingController();
  TextEditingController burialGroundController = TextEditingController();

  List<Widget> funeralPages = const [
    FuneralIntroScreen(),
    FuneralSecuringTheDeceasedScreen(),
    FuneralWhetherTheDeceasedScreen(),
    FuneralPreparationForSuppliesScreen(),
    FuneralSearchAndAddHomeScreen(),
    FuneralSearchAndAddCrematoriumScreen(),
    FuneralSearchAndAddBurialGroundScreen(),
    FuneralThingsToTakeCareScreen(),
    FuneralHomeReservationScreen(),
    FuneralSendObituaryTextScreen(),
    FuneralThankYouTextScreen(),
    FuneralInheritanceScreen(),
  ];

  List<String> funeralGuideTitles = const [
    FuneralGuideConstant.obtainTheDeceasedPhone,
    FuneralGuideConstant.checkedWhetherTheDeceasedIsEnrolled,
    FuneralGuideConstant.preparingFuneralSupplies,
    FuneralGuideConstant.findFuneralHome,
    FuneralGuideConstant.funeralGetToKnowMakeUpRoom,
    FuneralGuideConstant.funeralFindLocation,
    FuneralGuideConstant.funeralThingsToTakeCare,
    FuneralGuideConstant.funeralHomeReservation,
    FuneralGuideConstant.funeralSendCondolenseMessage,
    FuneralGuideConstant.funeralSendThankYouMessage,
    FuneralGuideConstant.funeralInheritance,
  ];

  List<Map> funeralPreparationList = [
    {
      'item' : "수의",
      'lowest_price': "1,268,649",
      'internet_price': "380,000",
    },
    {
      'item' : "유골함(진공)",
      'lowest_price': "200,000",
      'internet_price': "149,000",
    },
    {
      'item' : "영정사진+액자",
      'lowest_price': "86,956",
      'internet_price': "35,000",
    },
    {
      'item' : "관보",
      'lowest_price': "60,168",
      'internet_price': "12,000",
    },
  ];

  changeBringCopiesExpandedValue() {
    isBringExpanded = !isBringExpanded;
    notifyListeners();
  }

}
