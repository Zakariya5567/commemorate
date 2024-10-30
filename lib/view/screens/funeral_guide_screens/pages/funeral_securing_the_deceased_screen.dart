
import 'package:commemorate/utils/app_assets.dart';
import 'package:commemorate/utils/colors.dart';
import 'package:commemorate/view/screens/funeral_guide_screens/components/funeral_guide_constant.dart';
import 'package:commemorate/view/screens/funeral_guide_screens/components/tick_with_text.dart';
import 'package:commemorate/view/widgets/extention/int_extension.dart';
import 'package:commemorate/view/widgets/extention/string_extension.dart';
import 'package:commemorate/view/widgets/extention/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FuneralSecuringTheDeceasedScreen extends StatelessWidget {
  const FuneralSecuringTheDeceasedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        25.height,
        FuneralGuideConstant.funeralSecuringDeceased.toText(color: AppColors.brownPrimary, fontSize: 22, fontWeight: FontWeight.w700, maxLine: 2 ),
        25.height,
        TickWithText(title: FuneralGuideConstant.sometimeAfterTheDeceasedPassedAway,),
        20.height,
        TickWithText(title: FuneralGuideConstant.forAndroidPhone,),
        20.height,
        TickWithText(title: FuneralGuideConstant.accountSync, showTick: false, trailingIcon: AppIcons.iconToggle,),
        20.height,
        TickWithText(title: FuneralGuideConstant.googleAccount, showTick: false, trailingIcon: AppIcons.iconGoogle,),
        20.height,
        TickWithText(title: FuneralGuideConstant.iphoneText,),
        20.height,
        TickWithText(title: FuneralGuideConstant.deceasedContactSyncWithICloud, showTick: false, ),
        20.height,
        TickWithText(title: FuneralGuideConstant.deceasedContactNotSyncWithICloud, showTick: false, ),

      ],
    ).paddingSymmetric(horizontal: 22.w);
  }
}
