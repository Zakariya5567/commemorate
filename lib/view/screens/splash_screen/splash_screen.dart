import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../data/db/shared-preferences.dart';
import '../../../helper/router_navigator.dart';
import '../../../helper/routes_helper.dart';
import '../../../utils/colors.dart';
import '../../../utils/dimension.dart';
import '../../widgets/extention/svg_image.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    routes();
  }

  void routes() async {
    Timer(const Duration(seconds: 3), () async {
      bool? isLogin = await LocalDb.getLogin;
      if (isLogin == true) {
        goReplacementNamed(RouterHelper.homeScreen);
      } else {
        goReplacementNamed(RouterHelper.homeScreen);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: AppColors.transparentStatusBar,
      child: Container(
          alignment: Alignment.center,
          height: screenHeight,
          width: screenWidth,
          child: Text("Splash Screen")),
    );
  }
}
