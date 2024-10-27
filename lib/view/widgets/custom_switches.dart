import 'package:commemorate/view/widgets/extention/int_extension.dart';
import 'package:flutter/material.dart';
import '../../utils/colors.dart';
import 'extention/border_extension.dart';

class RoundedSwitch extends StatelessWidget {
  const RoundedSwitch({
    super.key,
    this.height,
    this.width,
    this.switchHeight,
    this.switchWidth,
    required this.value,
    required this.onChanged,
  });

  final double? height;
  final double? width;
  final double? switchHeight;
  final double? switchWidth;
  final Color buttonColor = AppColors.greyTertiary;
  final bool value;
  final VoidCallback onChanged;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onChanged,
      child: Container(
        width: width ?? 35.h,
        height: height ?? 35.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: borderRadiusCircular(10.h),
          color: buttonColor,
        ),
        child: Container(
          height: 13.h,
          width: 25.h,
          alignment: Alignment.center,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: value == true
                ? AppColors.greenPrimary
                : AppColors.greySecondary,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 12.h,
                  width: 12.h,
                  decoration: BoxDecoration(
                      color: value == true
                          ? Colors.transparent
                          : AppColors.whitePrimary,
                      shape: BoxShape.circle),
                ),
                Container(
                  height: 12.h,
                  width: 12.h,
                  decoration: BoxDecoration(
                      color: value == true
                          ? AppColors.whitePrimary
                          : Colors.transparent,
                      shape: BoxShape.circle),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
