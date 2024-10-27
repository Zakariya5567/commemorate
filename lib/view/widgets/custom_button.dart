import 'package:commemorate/view/widgets/extention/int_extension.dart';
import 'package:commemorate/view/widgets/extention/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../utils/colors.dart';
import '../../utils/style.dart';
import 'extention/border_extension.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.buttonName,
    required this.onPressed,
    this.buttonTextColor = AppColors.whitePrimary,
    this.buttonColor = AppColors.greenPrimary,
    this.borderColor = AppColors.greenPrimary,
    this.height,
    this.width,
    this.radius = 5,
    this.textSize = 16,
  });

  final String buttonName;
  final VoidCallback onPressed;
  final Color buttonTextColor;
  final Color buttonColor;
  final Color borderColor;
  final double? height;
  final double? width;
  final double radius;
  final double textSize;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onPressed,
        child: Container(
            height: height ?? 55.h,
            width: width ?? 358.w,
            decoration: BoxDecoration(
              borderRadius: borderRadiusCircular(radius),
              border: Border.all(color: borderColor),
              color: buttonColor,
            ),
            child: Text(
              buttonName,
              style: TextStyle(
                  color: buttonTextColor,
                  fontSize: textSize,
                  fontWeight: AppStyle.w600),
            ).center));
  }
}

class PrimaryButtonWithIcon extends StatelessWidget {
  const PrimaryButtonWithIcon({
    super.key,
    required this.buttonName,
    required this.onPressed,
    this.buttonTextColor = AppColors.whitePrimary,
    this.buttonColor = AppColors.greenPrimary,
    this.borderColor = AppColors.greenPrimary,
    this.height,
    this.width,
    this.radius = 5,
    this.textSize = 16,
    required this.icon,
    this.iconHeight,
    this.iconWidth,
  });

  final String buttonName;
  final VoidCallback onPressed;
  final Color buttonTextColor;
  final Color buttonColor;
  final Color borderColor;
  final double? height;
  final double? width;
  final double radius;
  final double textSize;
  final String icon;
  final double? iconHeight;
  final double? iconWidth;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onPressed,
        child: Container(
            height: height ?? 55.h,
            width: width ?? 358.w,
            decoration: BoxDecoration(
              borderRadius: borderRadiusCircular(radius),
              border: Border.all(color: borderColor),
              color: buttonColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  icon,
                  height: iconHeight,
                  width: iconWidth,
                ),
                10.width,
                Text(
                  buttonName,
                  style: TextStyle(
                      color: buttonTextColor,
                      fontSize: textSize,
                      fontWeight: AppStyle.w600),
                ),
              ],
            ).center));
  }
}
