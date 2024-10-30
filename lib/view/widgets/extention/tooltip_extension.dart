import 'package:alice/utils/alice_constants.dart';
import 'package:commemorate/utils/colors.dart';
import 'package:commemorate/view/widgets/extention/int_extension.dart';
import 'package:flutter/material.dart';

extension TooltipExtension on Widget {
  Widget tooltip(String message, {TooltipTriggerMode? triggerMode, double? height, double? verticalOffset}) {
    return Tooltip(
      message: message,
      triggerMode: triggerMode ?? TooltipTriggerMode.longPress,
      height: height ?? 24.h,
      margin: EdgeInsets.symmetric(horizontal: 30.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: AppColors.toolTipColor
      ),
      child: this,
    );
  }
}
