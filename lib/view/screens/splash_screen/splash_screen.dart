import 'dart:async';
import 'package:commemorate/utils/app_assets.dart';
import 'package:commemorate/utils/constant.dart';
import 'package:commemorate/view/widgets/extention/int_extension.dart';
import 'package:commemorate/view/widgets/extention/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
      child: Scaffold(
        body: Stack(

          children: [
            SizedBox(
              height: AppConstant.designHeight,
              width: double.infinity,
              child: Image.asset(AppImages.imgFlowerPng,).center
            ),

            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset(AppImages.imgSideFlowerPng).center
            ),

            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(AppImages.imgLeftFlowerPng).center
            ),
          ],
        ),
      )
    );
  }
}
