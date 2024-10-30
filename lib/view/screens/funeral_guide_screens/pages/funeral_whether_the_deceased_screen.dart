
import 'package:commemorate/utils/colors.dart';
import 'package:commemorate/view/screens/funeral_guide_screens/components/funeral_guide_constant.dart';
import 'package:commemorate/view/screens/funeral_guide_screens/components/tick_with_text.dart';
import 'package:commemorate/view/widgets/custom_button.dart';
import 'package:commemorate/view/widgets/extention/int_extension.dart';
import 'package:commemorate/view/widgets/extention/string_extension.dart';
import 'package:commemorate/view/widgets/extention/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../utils/app_assets.dart';

class FuneralWhetherTheDeceasedScreen extends StatelessWidget {
  const FuneralWhetherTheDeceasedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            25.height,
            FuneralGuideConstant.funeralDeceasedTitle.toText(color: AppColors.brownPrimary, fontSize: 22, fontWeight: FontWeight.w700, maxLine: 3 ),
            25.height,
            TickWithText(title: FuneralGuideConstant.manyCasesText,),
            20.height,
            TickWithText(title: FuneralGuideConstant.joinedMutualAid,),
            20.height,
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // SvgPicture.asset(AppIcons.iconLogoFair),
                Image.asset(AppIcons.iconLogoFairPng, width: 100.w, height: 25.h,),
                PrimaryButton(
                  buttonName: FuneralGuideConstant.btnFindMyMutualAid,
                  onPressed: () { },
                  width: 125.w,
                  height: 35.h,
                  buttonColor: AppColors.bluePrimary,
                  textSize: 14,
                  radius: 5,
                )
              ],
            ).align(Alignment.centerRight),
            20.height,
            TickWithText(title: FuneralGuideConstant.notJoinedMutualAid,),
            20.height,
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // SvgPicture.asset(AppIcons.iconLogoFair),
                Image.asset(AppIcons.iconLogoTreePng, width: 100.w, height: 25.h,),
                PrimaryButton(
                  buttonName: FuneralGuideConstant.btnMutualAid,
                  onPressed: () { },
                  width: 125.w,
                  height: 35.h,
                  buttonColor: AppColors.bluePrimary,
                  textSize: 14,
                  radius: 5,
                )
              ],
            ).align(Alignment.centerRight),
          ],
        ).paddingSymmetric(horizontal: 22.w),
        Positioned(
          bottom: -75,
          child: Image.asset(AppImages.imgDownFlowerPng)
        ),
      ],
    );
  }
}
