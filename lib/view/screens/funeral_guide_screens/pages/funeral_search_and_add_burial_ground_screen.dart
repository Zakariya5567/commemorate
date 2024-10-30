
import 'package:commemorate/provider/funeral_guide_provider.dart';
import 'package:commemorate/utils/app_assets.dart';
import 'package:commemorate/utils/colors.dart';
import 'package:commemorate/view/screens/funeral_guide_screens/components/funeral_guide_constant.dart';
import 'package:commemorate/view/screens/funeral_guide_screens/components/tick_with_text.dart';
import 'package:commemorate/view/widgets/custom_button.dart';
import 'package:commemorate/view/widgets/custom_text_field.dart';
import 'package:commemorate/view/widgets/extention/int_extension.dart';
import 'package:commemorate/view/widgets/extention/string_extension.dart';
import 'package:commemorate/view/widgets/extention/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class FuneralSearchAndAddBurialGroundScreen extends StatelessWidget {
  const FuneralSearchAndAddBurialGroundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<FuneralGuideProvider>(
      builder: (context, controller, child) {
        return Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
                bottom: -75.h,
                child: Image.asset(AppImages.imgDownFlowerPng).center
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                25.height,
                FuneralGuideConstant.findOutDeceased.toText(color: AppColors.brownPrimary, fontSize: 22, fontWeight: FontWeight.w700, maxLine: 3 ),
                25.height,
                TickWithText(title: FuneralGuideConstant.burialChamber,),
                20.height,
                TickWithText(title: FuneralGuideConstant.caseOfBurial,),
                20.height,
                TickWithText(title: FuneralGuideConstant.graduallyIncreasing,),
                20.height,
                TickWithText(title: FuneralGuideConstant.funeralHomeDepending,),
                20.height,
                const Spacer(),
                CustomTextField(
                  controller: controller.makeUpController,
                  hintText: FuneralGuideConstant.hintMakeUp,
                  borderColor: AppColors.greyTextFieldBorder,
                  radius: 5,
                  suffixIcon: Image.asset(AppIcons.iconArrowDownPng),
                ),
                20.height,
                CustomTextField(
                  controller: controller.burialGroundController,
                  hintText: FuneralGuideConstant.hintBurialGround,
                  borderColor: AppColors.greyTextFieldBorder,
                  radius: 5,
                  suffixIcon: Image.asset(AppIcons.iconArrowDownPng),
                ),
                20.height,
                PrimaryButton(
                  buttonName: FuneralGuideConstant.btnSearchBurial,
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
