import 'package:provider/provider.dart';
import '../provider/authentication_provider.dart';
import '../provider/bottom_navigation_provider.dart';

class ProviderHelper {
  static List<ChangeNotifierProvider> providers = [
    ChangeNotifierProvider<AuthProvider>(create: (context) => AuthProvider()),
    ChangeNotifierProvider<BottomNavigationProvider>(
        create: (context) => BottomNavigationProvider()),
  ];
}
