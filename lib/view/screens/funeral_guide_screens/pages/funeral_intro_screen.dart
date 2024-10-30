
import 'package:commemorate/helper/get_date_of_birth.dart';
import 'package:commemorate/utils/app_assets.dart';
import 'package:commemorate/utils/colors.dart';
import 'package:commemorate/view/screens/funeral_guide_screens/components/funeral_guide_constant.dart';
import 'package:commemorate/view/widgets/extention/int_extension.dart';
import 'package:commemorate/view/widgets/extention/string_extension.dart';
import 'package:commemorate/view/widgets/extention/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FuneralIntroScreen extends StatelessWidget {
  const FuneralIntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        25.height,
        FuneralGuideConstant.introScreenTitle.toText(color: AppColors.brownPrimary, fontSize: 22, fontWeight: FontWeight.w700 ),
        4.height,
        FuneralGuideConstant.swipUpText.toText(fontSize: 16, fontWeight: FontWeight.w700 ),
        40.height,
        Image.asset(AppImages.imgFlowerPng, height: 300.h, width: 342.w,),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(AppIcons.iconArrowsUp),
            7.width,
            FuneralGuideConstant.nextPage.toText(color: AppColors.greyTertiary, fontSize: 12, fontWeight: FontWeight.w700 ),
          ],
        ),
        5.height,
        SvgPicture.asset(AppIcons.iconFingerUp).paddingOnly(right: 50.w),
        5.height,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(AppIcons.iconArrowsDown),
            7.width,
            FuneralGuideConstant.nextPage.toText(color: AppColors.greyTertiary, fontSize: 12, fontWeight: FontWeight.w700 ),
          ],
        ),

      ],
    );
  }
}
