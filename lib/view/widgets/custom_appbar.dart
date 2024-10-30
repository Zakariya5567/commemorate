import 'package:commemorate/helper/get_date_of_birth.dart';
import 'package:commemorate/utils/app_assets.dart';
import 'package:commemorate/utils/colors.dart';
import 'package:commemorate/view/screens/funeral_guide_screens/pages/funeral_home_reservation_screen.dart';
import 'package:commemorate/view/widgets/extention/int_extension.dart';
import 'package:commemorate/view/widgets/extention/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {

  GestureTapCallback? onDrawerTap;
  CustomAppBar({super.key, this.onDrawerTap});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.greyPrimary,
      leading: SvgPicture.asset(AppIcons.iconDrawer, width: 32.w, height: 32.w,).paddingSymmetric(horizontal: 15.w).onPress(onDrawerTap!),
      actions: [
        SvgPicture.asset(AppIcons.iconAppIcon).paddingSymmetric(horizontal: 15.w),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
