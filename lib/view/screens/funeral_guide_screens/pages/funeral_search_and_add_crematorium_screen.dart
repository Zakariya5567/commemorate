
import 'package:commemorate/utils/app_assets.dart';
import 'package:commemorate/utils/colors.dart';
import 'package:commemorate/view/screens/funeral_guide_screens/components/funeral_guide_constant.dart';
import 'package:commemorate/view/screens/funeral_guide_screens/components/tick_with_text.dart';
import 'package:commemorate/view/widgets/custom_button.dart';
import 'package:commemorate/view/widgets/extention/int_extension.dart';
import 'package:commemorate/view/widgets/extention/string_extension.dart';
import 'package:commemorate/view/widgets/extention/widget_extension.dart';
import 'package:flutter/material.dart';

class FuneralSearchAndAddCrematoriumScreen extends StatelessWidget {
  const FuneralSearchAndAddCrematoriumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          left: 0,
          child: Image.asset(AppImages.imgSideFlowerPng)
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            25.height,
            FuneralGuideConstant.reservingMakeup.toText(color: AppColors.brownPrimary, fontSize: 22, fontWeight: FontWeight.w700, maxLine: 3 ),
            25.height,
            TickWithText(title: FuneralGuideConstant.makeupRoom,),
            20.height,
            TickWithText(title: FuneralGuideConstant.outsideRoom,),
            20.height,
            TickWithText(title: FuneralGuideConstant.makingCrematorium,),
            20.height,
            TickWithText(title: FuneralGuideConstant.makeupProduct, showInfoIcon: true, infoIconToolTipText: "관내=고인이 사망 전 최소 6개월간 거주한 주소지가 속한 시/도",),
            20.height,
            const Spacer(),
            PrimaryButton(
              buttonName: FuneralGuideConstant.btnSearchMakeup,
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
