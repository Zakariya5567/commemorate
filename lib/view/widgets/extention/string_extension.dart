import 'package:commemorate/utils/style.dart';
import 'package:commemorate/view/widgets/extention/int_extension.dart';
import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

extension StringExtension on String {
  Widget toText(
          {Color? color,
          double? fontSize,
          int? maxLine,
          TextAlign? textAlign,
          TextOverflow? overflow,
          String? fontFamily,
          FontWeight? fontWeight,
          Color? backgroundColor,
          double? lineHeight,
          bool? isBold,
          bool? isUnderLine = false,
          bool? isMedium}) =>
      Text(
        this,
        maxLines: maxLine,
        textAlign: textAlign,
        style: TextStyle(
          height: lineHeight,
          backgroundColor: backgroundColor,
          color: color ?? AppColors.blackSecondary,
          fontSize: (fontSize ?? 12).toInt().h,
          fontFamily: fontFamily??AppStyle.pretendardRegular,
          fontStyle: FontStyle.normal,
          overflow: overflow ?? TextOverflow.ellipsis,
          decoration: isUnderLine! ? TextDecoration.underline : TextDecoration.none,
          fontWeight: fontWeight ??
              (isBold == true
                  ? FontWeight.bold
                  : (isMedium == true ? FontWeight.w500 : FontWeight.w400)),
        ),
      );
}
