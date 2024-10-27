import 'package:alice/alice.dart';
import 'package:commemorate/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'data/repository/api_repo.dart';
import 'helper/notificaton_services.dart';
import 'helper/provider_helper.dart';
import 'helper/routes_helper.dart';
import 'helper/scroll_behaviour.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
Alice alice = Alice(
  showNotification: false,
  showInspectorOnShake: true,
  maxCallsCount: 1000,
  navigatorKey: navigatorKey,
);

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Alice To check API Response
  navigatorKey = alice.getNavigatorKey() ?? navigatorKey;
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Alice To check API Response
    dio.interceptors.add(alice.getDioInterceptor());
    return MultiProvider(
      providers: ProviderHelper.providers,
      child: MaterialApp(
          navigatorKey: navigatorKey,
          builder: (context, child) {
            return ScrollConfiguration(
              behavior: MyBehavior(),
              child: MediaQuery(
                data: MediaQuery.of(context)
                    .copyWith(textScaler: const TextScaler.linear(1.0)),
                child: child!,
              ),
            );
          },
          debugShowCheckedModeBanner: false,
          title: 'Commemorate',
          theme: ThemeData(
            useMaterial3: false,
            primarySwatch:
                const MaterialColor(0x219942, AppColors.primaryColor),
            pageTransitionsTheme: const PageTransitionsTheme(builders: {
              TargetPlatform.android: CupertinoPageTransitionsBuilder(),
              TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
            }),
          ),
          initialRoute: RouterHelper.initial,
          routes: RouterHelper.routes),
    );
  }
}
