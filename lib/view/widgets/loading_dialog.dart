// LOADING DIALOG
import 'package:commemorate/view/widgets/extention/int_extension.dart';
import 'package:flutter/material.dart';
import '../../main.dart';
import '../../utils/colors.dart';

loaderDialog() {
  return showDialog(
    context: navigatorKey.currentContext!,
    barrierDismissible: false,
    builder: (context) {
      return AlertDialog(
        backgroundColor: AppColors.whitePrimary,
        insetPadding: EdgeInsets.symmetric(horizontal: 120.h, vertical: 130.w),
        contentPadding: const EdgeInsets.all(25),
        clipBehavior: Clip.none,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        content: SizedBox(
          height: 90.h,
          width: 90.h,
          child: const Center(
            child: CircularProgressIndicator(
              color: AppColors.greenPrimary,
            ),
          ),
        ),
      );
    },
  );
}
