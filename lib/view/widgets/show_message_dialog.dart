import 'package:commemorate/utils/app_assets.dart';
import 'package:commemorate/utils/style.dart';
import 'package:commemorate/view/widgets/extention/int_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../helper/router_navigator.dart';
import '../../main.dart';
import '../../utils/colors.dart';
import 'custom_button.dart';

void showMessageDialog({
  required bool isError,
  required String message,
  VoidCallback? onTap,
}) {
  showDialog(
    barrierDismissible: false,
    context: navigatorKey.currentContext!,
    builder: (BuildContext context) {
      return Dialog(
        insetPadding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        elevation: 0.0,
        backgroundColor: AppColors.whitePrimary,
        child: contentBox(context, isError, message, onTap),
      );
    },
  );
}

Widget contentBox(
    BuildContext context, bool isError, String message, VoidCallback? onTap) {
  return Container(
    width: 300.w,
    margin: EdgeInsets.all(20.h),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        // 20.height,
        SvgPicture.asset(
          isError ? AppIcons.iconError : AppIcons.iconSuccess,
          height: 90.h,
          width: 90.h,
        ),
        20.height,
        Flexible(
          child: Text(
            message,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: AppColors.blackPrimary,
              fontSize: 16,
              fontWeight: AppStyle.w600,
              fontFamily: AppStyle.gothamRegular,
            ),
          ),
        ),
        20.height,
        PrimaryButton(
            width: 171.w,
            height: 55.h,
            buttonName: "OK",
            onPressed: onTap ?? () => goBack())
      ],
    ),
  );
}
