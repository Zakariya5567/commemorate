import 'package:commemorate/provider/funeral_guide_provider.dart';
import 'package:commemorate/provider/new_journey_provider.dart';
import 'package:commemorate/provider/obituray_provider.dart';
import 'package:commemorate/provider/preparation_list_provider.dart';
import 'package:commemorate/provider/thank_you_provider.dart';
import 'package:provider/provider.dart';
import '../provider/authentication_provider.dart';
import '../provider/bottom_navigation_provider.dart';

class ProviderHelper {
  static List<ChangeNotifierProvider> providers = [
    ChangeNotifierProvider<AuthProvider>(create: (context) => AuthProvider()),
    ChangeNotifierProvider<BottomNavigationProvider>(
        create: (context) => BottomNavigationProvider()),
    ChangeNotifierProvider<FuneralGuideProvider>(
        create: (context) => FuneralGuideProvider()),
    ChangeNotifierProvider<PreparationListProvider>(
        create: (context) => PreparationListProvider()),
    ChangeNotifierProvider<ObiturayProvider>(
        create: (context) => ObiturayProvider()),
    ChangeNotifierProvider<ThankYouProvider>(
        create: (context) => ThankYouProvider()),
    ChangeNotifierProvider<NewJourneyProvider>(
        create: (context) => NewJourneyProvider()),
  ];
}
