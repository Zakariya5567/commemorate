
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

class FuneralSendObituaryTextScreen extends StatelessWidget {
  const FuneralSendObituaryTextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<FuneralGuideProvider>(
      builder: (context, controller, child) {
        return Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              bottom: -85.h,
              left: 0,
              child: Image.asset(AppImages.imgDownFlowerPng).center
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                25.height,
                FuneralGuideConstant.sendObituaryTitle.toText(color: AppColors.brownPrimary, fontSize: 22, fontWeight: FontWeight.w700, maxLine: 3 ),
                25.height,
                FuneralGuideConstant.obituaryTextInMemoryOf.toText(maxLine: 3, fontWeight: FontWeight.w400, fontSize: 16, color: AppColors.greySecondary, textAlign: TextAlign.justify),
                25.height,
                TickWithText(title: FuneralGuideConstant.specializingInFamilyStyle,),
                20.height,
                TickWithText(title: FuneralGuideConstant.bothObituaryAndThanksTextAreFree,),
                20.height,
                TickWithText(title: FuneralGuideConstant.additionalServiceForResident,),
                20.height,
                const Spacer(),
                PrimaryButton(
                  buttonName: FuneralGuideConstant.btnSendObituaryText,
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
