
import 'package:commemorate/provider/funeral_guide_provider.dart';
import 'package:commemorate/utils/app_assets.dart';
import 'package:commemorate/utils/colors.dart';
import 'package:commemorate/view/screens/funeral_guide_screens/components/funeral_guide_constant.dart';
import 'package:commemorate/view/screens/funeral_guide_screens/components/tick_with_text.dart';
import 'package:commemorate/view/widgets/custom_button.dart';
import 'package:commemorate/view/widgets/extention/int_extension.dart';
import 'package:commemorate/view/widgets/extention/string_extension.dart';
import 'package:commemorate/view/widgets/extention/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FuneralHomeReservationScreen extends StatelessWidget {
  const FuneralHomeReservationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<FuneralGuideProvider>(
      builder: (context, controller, child) {
        return Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset(AppImages.imgSideFlowerPng).center
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                25.height,
                FuneralGuideConstant.reserveFuneralHome.toText(color: AppColors.brownPrimary, fontSize: 22, fontWeight: FontWeight.w700, maxLine: 3 ),
                25.height,
                TickWithText(title: FuneralGuideConstant.reserveAccept,),
                20.height,
                TickWithText(title: FuneralGuideConstant.planningFuneral,),
                20.height,
                TickWithText(title: FuneralGuideConstant.caseOfFuneralHome,),
                20.height,
                Row(
                  children: [
                    FuneralGuideConstant.hospitalMemorial.toText(maxLine: 3, fontWeight: FontWeight.w400, fontSize: 16, color: AppColors.bluePrimary, textAlign: TextAlign.justify).expanded,
                    PrimaryButton(
                      buttonName: FuneralGuideConstant.btnCallFuneralHall,
                      onPressed: () { },
                      width: 85.w,
                      height: 40.h,
                      buttonColor: AppColors.bluePrimary,
                      textSize: 14,
                      radius: 5,
                    )
                  ],
                ).paddingOnly(left: 10.w,top: 10.w),
                20.height,
                Row(
                  children: [
                    FuneralGuideConstant.hospitalFuneralHall.toText(maxLine: 3, fontWeight: FontWeight.w400, fontSize: 16, color: AppColors.bluePrimary, textAlign: TextAlign.justify).expanded,
                    PrimaryButton(
                      buttonName: FuneralGuideConstant.btnCallCityHall,
                      onPressed: () { },
                      width: 85.w,
                      height: 40.h,
                      buttonColor: AppColors.bluePrimary,
                      textSize: 14,
                      radius: 5,
                    )
                  ],
                ).paddingOnly(left: 10.w,top: 10.w),
                20.height,
                Row(
                  children: [
                    FuneralGuideConstant.koreaHospital.toText(maxLine: 3, fontWeight: FontWeight.w400, fontSize: 16, color: AppColors.bluePrimary, textAlign: TextAlign.justify).expanded,
                    PrimaryButton(
                      buttonName: FuneralGuideConstant.btnCallKoreaHall,
                      onPressed: () { },
                      width: 85.w,
                      height: 40.h,
                      buttonColor: AppColors.bluePrimary,
                      textSize: 14,
                      radius: 5,
                    )
                  ],
                ).paddingOnly(left: 10.w,top: 10.w),
                50.height,
                TickWithText(title: FuneralGuideConstant.cantFind,),
                const Spacer(),
                PrimaryButton(
                  buttonName: FuneralGuideConstant.btnSearchFuneralHome,
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
      },
    );
  }
}
