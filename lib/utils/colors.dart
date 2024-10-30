import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//primary swatch
class AppColors {
  static const Map<int, Color> primaryColor = {
    50: Color.fromRGBO(1, 55, 99, 0.1),
    100: Color.fromRGBO(1, 55, 99, 0.2),
    200: Color.fromRGBO(1, 55, 99, 0.3),
    300: Color.fromRGBO(1, 55, 99, 0.4),
    400: Color.fromRGBO(1, 55, 99, 0.5),
    500: Color.fromRGBO(1, 55, 99, 0.6),
    600: Color.fromRGBO(1, 55, 99, 0.7),
    700: Color.fromRGBO(1, 55, 99, 0.8),
    800: Color.fromRGBO(1, 55, 99, 0.9),
    900: Color.fromRGBO(1, 55, 99, 1),
  };

  static const bluePrimary = Color.fromRGBO(1, 55, 99, 1);
  static const blueSecondary = Color.fromRGBO(17, 85, 204, 1);
  static const blueLight = Color.fromRGBO(61, 133, 197, 1);

  static const redPrimary = Color.fromRGBO(255, 0, 0, 1);
  static const redSecondary = Color.fromRGBO(191, 76, 12, 1);

  static const brownPrimary = Color.fromRGBO(167, 119, 60, 1);

  static const blackSecondary = Color.fromRGBO(48, 71, 63, 1);
  static const greyDark = Color.fromRGBO(51, 51, 51, 1);

  static const greyPrimary = Color.fromRGBO(67, 67, 67, 1);
  static const greySecondary = Color.fromRGBO(86, 87, 88, 1);
  static const greyTertiary = Color.fromRGBO(153, 153, 153, 1);
  static const toolTipColor = Color.fromRGBO(144, 144, 144, 1);
  static const greyQuaternary = Color.fromRGBO(229, 229, 229, 1);
  static const greyTextFieldBorder = Color.fromRGBO(213, 213, 213, 1);

  static const whitePrimary = Color.fromRGBO(255, 255, 255, 1);
  static const whiteSecondary = Color.fromRGBO(250, 250, 250, 1);

  static const greenPrimary = Color.fromRGBO(33, 153, 66, 1);
  static const greenSecondary = Color.fromRGBO(19, 131, 64, 1);

  static const shimmerBaseColor = Color.fromRGBO(200, 200, 200, 0.6);
  static const shimmerHighlightColor = Color.fromRGBO(243, 243, 243, 0.66);

// statusBar
  static const whiteStatusBar = SystemUiOverlayStyle(
      statusBarColor: whitePrimary,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: whitePrimary,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarDividerColor: whitePrimary);

  // statusBar
  static const greyStatusBar = SystemUiOverlayStyle(
      statusBarColor: greyPrimary,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: greyPrimary,
      systemNavigationBarIconBrightness: Brightness.light,
      systemNavigationBarDividerColor: greyPrimary);

  static const transparentStatusBar = SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.light,
      systemNavigationBarDividerColor: Colors.transparent);
}
