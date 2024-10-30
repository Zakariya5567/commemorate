import 'package:commemorate/helper/get_date_of_birth.dart';
import 'package:commemorate/utils/app_assets.dart';
import 'package:commemorate/utils/colors.dart';
import 'package:commemorate/view/screens/funeral_guide_screens/pages/funeral_home_reservation_screen.dart';
import 'package:commemorate/view/screens/funeral_guide_screens/pages/funeral_preparation_for_supplies_screen.dart';
import 'package:commemorate/view/widgets/extention/int_extension.dart';
import 'package:commemorate/view/widgets/extention/string_extension.dart';
import 'package:commemorate/view/widgets/extention/tooltip_extension.dart';
import 'package:commemorate/view/widgets/extention/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TickWithText extends StatelessWidget {
  String? title;
  bool? showTick;
  String? trailingIcon;
  bool? showInfoIcon;
  String? infoIconToolTipText;
  TickWithText({super.key, this.title, this.showTick = true, this.trailingIcon, this.showInfoIcon = false, this.infoIconToolTipText = ''});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        showTick! ? SvgPicture.asset(AppIcons.iconTick, height: 12.w, width: 12.w,) : SizedBox(height: 12.w, width: 12.w),
        10.width,
        title!.toText(maxLine: 3, fontWeight: FontWeight.w400, fontSize: 16, color: AppColors.greySecondary, textAlign: TextAlign.justify).expanded,
        showInfoIcon == false
          ? Container()
          : SvgPicture.asset(AppIcons.iconInfo).tooltip(infoIconToolTipText!),
        trailingIcon == null
          ? Container()
          : SvgPicture.asset(trailingIcon!)
      ],
    );
  }
}
