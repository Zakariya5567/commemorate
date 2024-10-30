
import 'package:commemorate/utils/app_assets.dart';
import 'package:commemorate/utils/colors.dart';
import 'package:commemorate/view/screens/funeral_guide_screens/components/funeral_guide_constant.dart';
import 'package:commemorate/view/screens/funeral_guide_screens/components/tick_with_text.dart';
import 'package:commemorate/view/widgets/custom_button.dart';
import 'package:commemorate/view/widgets/extention/int_extension.dart';
import 'package:commemorate/view/widgets/extention/string_extension.dart';
import 'package:commemorate/view/widgets/extention/widget_extension.dart';
import 'package:flutter/material.dart';

class FuneralSearchAndAddHomeScreen extends StatelessWidget {
  const FuneralSearchAndAddHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          right: 0,
          child: Image.asset(AppImages.imgLeftFlowerPng).center
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            25.height,
            FuneralGuideConstant.foundOutFuneralHome.toText(color: AppColors.brownPrimary, fontSize: 22, fontWeight: FontWeight.w700, maxLine: 3 ),
            25.height,
            TickWithText(title: FuneralGuideConstant.reservationForPublic,),
            20.height,
            TickWithText(title: FuneralGuideConstant.publicFuneralHome,),
            20.height,
            TickWithText(title: FuneralGuideConstant.searchFuneralHome,),
            20.height,
            const Spacer(),
            PrimaryButton(
              buttonName: FuneralGuideConstant.btnSearchHome,
              onPressed: () { },
              buttonColor: AppColors.bluePrimary,
              height: 45.h,
              textSize: 14,
              radius: 5,
            ),
            20.height,

          ],
        ).paddingSymmetric(horizontal: 22.w),
      ],
    );
  }
}
