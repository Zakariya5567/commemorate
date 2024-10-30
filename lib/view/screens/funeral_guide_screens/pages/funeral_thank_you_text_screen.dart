
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

class FuneralThankYouTextScreen extends StatelessWidget {
  const FuneralThankYouTextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<FuneralGuideProvider>(
      builder: (context, controller, child) {
        return Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              bottom: -85.h,
              child: Image.asset(AppImages.imgDownFlowerPng).center
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                25.height,
                FuneralGuideConstant.sendThankYouTitle.toText(color: AppColors.brownPrimary, fontSize: 22, fontWeight: FontWeight.w700, maxLine: 3 ),
                25.height,
                TickWithText(title: FuneralGuideConstant.sendAThankYouTextMessage,),
                20.height,
                TickWithText(title: FuneralGuideConstant.doYouWantToReturnAReturnGift,),
                20.height,
                20.height,
                const Spacer(),
                PrimaryButton(
                  buttonName: FuneralGuideConstant.btnSendThankYouText,
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
