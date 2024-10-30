import 'package:commemorate/helper/get_date_of_birth.dart';
import 'package:commemorate/utils/app_assets.dart';
import 'package:commemorate/utils/colors.dart';
import 'package:commemorate/view/screens/funeral_guide_screens/pages/funeral_home_reservation_screen.dart';
import 'package:commemorate/view/widgets/extention/int_extension.dart';
import 'package:commemorate/view/widgets/extention/string_extension.dart';
import 'package:commemorate/view/widgets/extention/tooltip_extension.dart';
import 'package:commemorate/view/widgets/extention/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CheckboxWithText extends StatelessWidget {
  String? title;
  String? trailingIcon;
  String? infoIconToolTipText;
  bool? showInfoIcon;
  CheckboxWithText({super.key, this.title, this.trailingIcon, this.showInfoIcon = false, this.infoIconToolTipText = ''});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        title!.toText(maxLine: 3, fontWeight: FontWeight.w400, fontSize: 16, color: AppColors.greySecondary, textAlign: TextAlign.justify).expanded,
        10.width,
        showInfoIcon == false
          ? Container()
          : SvgPicture.asset(AppIcons.iconInfo).tooltip(infoIconToolTipText!).paddingSymmetric(horizontal: 20.w),
        trailingIcon == null
            ? Container()
            : SvgPicture.asset(trailingIcon!)
      ],
    );
  }
}
